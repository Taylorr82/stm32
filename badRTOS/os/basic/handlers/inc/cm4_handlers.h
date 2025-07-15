/**
 * @brief Cortex-m4 required handlers
 * 
 */

#ifdef __cplusplus
extern "C" {
#endif

void SysTick_Handler(void);
void NMI_Handler(void);
void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);
void SVC_handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);

#ifdef __cplusplus
}
#endif