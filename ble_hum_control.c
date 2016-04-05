#include "ble_hum_control.h"
#include <string.h>
#include "nordic_common.h"
#include "ble_srv_common.h"
#include "app_util.h"
#include "app_error.h"

static void on_connect(ble_hum_control_t * p_hum_control, ble_evt_t * p_ble_evt)
{
    p_hum_control->conn_handle = p_ble_evt->evt.gap_evt.conn_handle;
}

static void on_disconnect(ble_hum_control_t * p_hum_control, ble_evt_t * p_ble_evt)
{
    UNUSED_PARAMETER(p_ble_evt);
    p_hum_control->conn_handle = BLE_CONN_HANDLE_INVALID;
}

static void on_write(ble_hum_control_t * p_hum_control, ble_evt_t * p_ble_evt)
{
    ble_gatts_evt_write_t * p_evt_write = &p_ble_evt->evt.gatts_evt.params.write;
    
    if ((p_evt_write->handle == p_hum_control->hum_control_char_handles.value_handle) &&
        (p_evt_write->len == 1) &&
        (p_hum_control->hum_control_write_handler != NULL))
    {
        p_hum_control->hum_control_write_handler(p_hum_control, p_evt_write->data[0]);
    }
}


void ble_hum_control_on_ble_evt(ble_hum_control_t * p_hum_control, ble_evt_t * p_ble_evt)
{
    switch (p_ble_evt->header.evt_id)
    {
        case BLE_GAP_EVT_CONNECTED:
            on_connect(p_hum_control, p_ble_evt);
            break;
            
        case BLE_GAP_EVT_DISCONNECTED:
            on_disconnect(p_hum_control, p_ble_evt);
            break;
            
        case BLE_GATTS_EVT_WRITE:
            on_write(p_hum_control, p_ble_evt);
            break;
            
        default:
            // No implementation needed.
            break;
    }
}

static uint32_t led_char_add(ble_hum_control_t * p_hum_control, const ble_hum_control_init_t * p_hum_control_init)
{
    ble_gatts_char_md_t char_md;
    ble_gatts_attr_t    attr_char_value;
    ble_uuid_t          ble_uuid;
    ble_gatts_attr_md_t attr_md;
	uint8_t             init_state = 0x00;

    memset(&char_md, 0, sizeof(char_md));
    
	char_md.char_props.notify = 1;
    char_md.char_props.read   = 1;
    char_md.char_props.write  = 1;
    char_md.p_char_user_desc  = NULL;
    char_md.p_char_pf         = NULL;
    char_md.p_user_desc_md    = NULL;
    char_md.p_cccd_md         = NULL;
    char_md.p_sccd_md         = NULL;
    
    ble_uuid.type = p_hum_control->uuid_type;
    ble_uuid.uuid = HUM_CONTROL_UUID_CHAR;
    
    memset(&attr_md, 0, sizeof(attr_md));

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&attr_md.write_perm);
    attr_md.vloc       = BLE_GATTS_VLOC_STACK;
    attr_md.rd_auth    = 0;
    attr_md.wr_auth    = 0;
    attr_md.vlen       = 0;
    
    memset(&attr_char_value, 0, sizeof(attr_char_value));

    attr_char_value.p_uuid       = &ble_uuid;
    attr_char_value.p_attr_md    = &attr_md;
    attr_char_value.init_len     = sizeof(uint8_t);
    attr_char_value.init_offs    = 0;
    attr_char_value.max_len      = sizeof(uint8_t);
    attr_char_value.p_value      = &init_state;
    
    return sd_ble_gatts_characteristic_add(p_hum_control->service_handle, &char_md,
                                               &attr_char_value,
                                               &p_hum_control->hum_control_char_handles);
}

uint32_t ble_hum_control_init(ble_hum_control_t * p_hum_control, const ble_hum_control_init_t * p_hum_control_init)
{
    uint32_t   err_code;
    ble_uuid_t ble_uuid;

    // Initialize service structure
    p_hum_control->conn_handle       = BLE_CONN_HANDLE_INVALID;
    p_hum_control->hum_control_write_handler = p_hum_control_init->hum_control_write_handler;
    
    // Add service
    ble_uuid128_t base_uuid = {HUM_CONTROL_UUID_BASE};
    err_code = sd_ble_uuid_vs_add(&base_uuid, &p_hum_control->uuid_type);
    if (err_code != NRF_SUCCESS)
    {
        return err_code;
    }
    
    ble_uuid.type = p_hum_control->uuid_type;
    ble_uuid.uuid = HUM_CONTROL_UUID_SERVICE;

    err_code = sd_ble_gatts_service_add(BLE_GATTS_SRVC_TYPE_PRIMARY, &ble_uuid, &p_hum_control->service_handle);
    if (err_code != NRF_SUCCESS)
    {
        return err_code;
    }
    
    err_code = led_char_add(p_hum_control, p_hum_control_init);
    if (err_code != NRF_SUCCESS)
    {
        return err_code;
    }
    
    return NRF_SUCCESS;
}

void ble_hum_control_state_send(ble_hum_control_t * p_hum_control, uint8_t state)
{
    uint32_t err_code;
	uint16_t len = sizeof(uint8_t);
    // Send value if connected and notifying
    if (p_hum_control->conn_handle != BLE_CONN_HANDLE_INVALID)
    {

        ble_gatts_hvx_params_t hvx_params;

        memset(&hvx_params, 0, sizeof(hvx_params));

        hvx_params.handle = p_hum_control->hum_control_char_handles.value_handle;
        hvx_params.type   = BLE_GATT_HVX_NOTIFICATION;
        hvx_params.offset = 0;
        hvx_params.p_len  = &len;
        hvx_params.p_data = &state;

        err_code = sd_ble_gatts_hvx(p_hum_control->conn_handle, &hvx_params);
    }
    else
    {
        err_code = NRF_ERROR_INVALID_STATE;
    }
    if 
	(
        (err_code != NRF_SUCCESS)
        &&
        (err_code != NRF_ERROR_INVALID_STATE)
        &&
        (err_code != BLE_ERROR_NO_TX_BUFFERS)
        &&
        (err_code != BLE_ERROR_GATTS_SYS_ATTR_MISSING)
    )
    {
        APP_ERROR_HANDLER(err_code);
    }
}
