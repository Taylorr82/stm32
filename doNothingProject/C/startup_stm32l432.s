/********************************************************************************
  * @file      startup_stm32l432.s
  * @author    Taylorr82
  * @date      15-June-2025
  ******************************************************************************
  */

  .syntax unified
  .cpu cortex-m4
  .thumb

.global	g_pfnVectors

    .section	.text.Reset_Handler
	.weak	Reset_Handler
	.type	Reset_Handler, %function
Reset_Handler:

/* Copy the data segment initializers from flash to SRAM */
    ldr sp,=_estack
    ldr r10,=0xDEADBEEF // Add a marker to indicate we got to this line
    bl Infinite_Loop
    bl	main

Infinite_Loop:
    b Infinite_Loop

/******************************************************************************
*
* The minimal vector table for a Cortex-M.  Note that the proper constructs
* must be placed on this to ensure that it ends up at physical address
* 0x0000.0000.
*
******************************************************************************/
 	.section	.isr_vector,"a",%progbits
	.type	g_pfnVectors, %object
	.size	g_pfnVectors, .-g_pfnVectors

g_pfnVectors:
	.word	_estack
	.word	Reset_Handler
	.word	0 /* NMI_Handler */
	.word	0 /* HardFault_Handler */
	.word	0 /* MemManage_Handler */
	.word	0 /* BusFault_Handler */
	.word	0 /* UsageFault_Handler */
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0 // SVC_Handler
	.word	0 // DebugMon_Handler
	.word	0
	.word	0 // PendSV_Handler
	.word	0 // SysTick_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
