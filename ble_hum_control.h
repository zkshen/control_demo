#ifndef BLE_HUM_CONTROL_H__
#define BLE_HUM_CONTROL_H__

#include <stdint.h>
#include <stdbool.h>
#include "ble.h"
#include "ble_srv_common.h"

#define HUM_CONTROL_UUID_BASE {0x23, 0xD1, 0xBC, 0xEA, 0x5F, 0x78, 0x23, 0x15, 0xDE, 0xEF, 0x12, 0x12, 0x00, 0x00, 0x00, 0x00}
#define HUM_CONTROL_UUID_SERVICE 0x0000
#define HUM_CONTROL_UUID_CHAR 0x0001

 
typedef struct ble_hum_control_s ble_hum_control_t;

typedef void (*ble_hum_control_write_handler_t) (ble_hum_control_t * p_hum_control, uint8_t new_state);

typedef struct
{
    ble_hum_control_write_handler_t hum_control_write_handler;                    
} ble_hum_control_init_t;

typedef struct ble_hum_control_s
{
    uint16_t                         service_handle;
    ble_gatts_char_handles_t         hum_control_char_handles;
    uint8_t                          uuid_type;
    uint16_t                         conn_handle;
    ble_hum_control_write_handler_t  hum_control_write_handler;
} ble_hum_control_t;

uint32_t ble_hum_control_init(ble_hum_control_t * p_hum_control, const ble_hum_control_init_t * p_hum_control_init);

void ble_hum_control_on_ble_evt(ble_hum_control_t * p_hum_control, ble_evt_t * p_ble_evt);

void ble_hum_control_state_send(ble_hum_control_t * p_hum_control, uint8_t state);

#endif 


