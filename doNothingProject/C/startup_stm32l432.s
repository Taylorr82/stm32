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

.word _sbss
.word _ebss
.word _sdata
.word _edata
.word _sidata

    .section	.text.Reset_Handler
	.weak	Reset_Handler
	.type	Reset_Handler, %function
Reset_Handler:

/* Set up the stack pointer */
    ldr sp,=_estack

/* Fall in to StartZerobss */

StartZerobss:
	ldr r2, =_sbss
	ldr r4, =_ebss
	b LoopZeroFillbss

ZeroWritebss:
	movs r3, #0 // Load 0 in to r3
	str r3, [r2] // store 0 at r2
	adds r2, r2, #4 // Increment r2 

LoopZeroFillbss:
	cmp r2, r4
	bcc ZeroWritebss

/* Fall in to copy data */

StartCopyData:
	movs	r1, #0
	b LoopCopyData

DoCopyData:
	ldr	r3, =_sidata
	ldr	r3, [r3, r1]
	str	r3, [r0, r1]
	adds	r1, r1, #4

LoopCopyData:
	ldr	r0, =_sdata
	ldr	r3, =_edata
	adds r2, r0, r1
	cmp	r2, r3
	bcc	DoCopyData

/* Call the C static constructors */
bl __libc_init_array

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
