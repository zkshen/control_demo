#ifndef BLE_FAN_CONTROL_H__
#define BLE_FAN_CONTROL_H__

#include <stdint.h>
#include <stdbool.h>
#include "ble.h"
#include "ble_srv_common.h"

#define FAN_CONTROL_UUID_BASE {0x23, 0xD1, 0xBC, 0xEA, 0x5F, 0x78, 0x23, 0x15, 0xDE, 0xEF, 0x12, 0x12, 0x00, 0x00, 0x00, 0x00}
#define FAN_CONTROL_UUID_SERVICE 0x1000
#define FAN_CONTROL_UUID_CHAR 0x1001

 
typedef struct ble_fan_control_s ble_fan_control_t;

typedef void (*ble_fan_control_write_handler_t) (ble_fan_control_t * p_fan_control, uint8_t new_state);

typedef struct
{
    ble_fan_control_write_handler_t fan_control_write_handler;                    
} ble_fan_control_init_t;

typedef struct ble_fan_control_s
{
    uint16_t                         service_handle;
    ble_gatts_char_handles_t         fan_control_char_handles;
    uint8_t                          uuid_type;
    uint16_t                         conn_handle;
    ble_fan_control_write_handler_t  fan_control_write_handler;
} ble_fan_control_t;

uint32_t ble_fan_control_init(ble_fan_control_t * p_fan_control, const ble_fan_control_init_t * p_fan_control_init);

void ble_fan_control_on_ble_evt(ble_fan_control_t * p_fan_control, ble_evt_t * p_ble_evt);

void ble_fan_control_state_send(ble_fan_control_t * p_fan_control, uint8_t state);

#endif 


