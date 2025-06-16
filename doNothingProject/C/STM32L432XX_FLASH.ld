/* Entry Point */
ENTRY(Reset_Handler)

/* Highest address of the user mode stack */
_estack = ORIGIN(RAM) + LENGTH(RAM);    /* end of RAM */
/* Generate a link error if heap and stack don't fit into RAM */
_Min_Heap_Size = 0x200;      /* required amount of heap  */
_Min_Stack_Size = 0x400; /* required amount of stack */

/* Specify the memory areas */
MEMORY
{
RAM (xrw)      : ORIGIN = 0x20000000, LENGTH = 48K
RAM2 (xrw)      : ORIGIN = 0x10000000, LENGTH = 16K
FLASH (rx)      : ORIGIN = 0x8000000, LENGTH = 256K
}

/* Define output sections */
SECTIONS
{
  .isr_vector :
  {
    . = ALIGN(8);
    KEEP(*(.isr_vector)) /* Startup code */
    . = ALIGN(8);
  } > FLASH

  .text :
  {
    . = ALIGN(4);
    *(.text)
  } > FLASH

  .rodata :
  {
    . = ALIGN(8);
    *(rodata)
    *(.rodata*)
    . = ALIGN(8);
  } > FLASH
}


