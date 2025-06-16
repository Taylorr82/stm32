#!/usr/bin/env sh

qemu-system-arm -d 'in_asm,int,exec,cpu,guest_errors,unimp' -cpu cortex-m4 -machine netduinoplus2 -nographic -semihosting-config enable=on,target=native   -kernel build/do_nothing_c.bin