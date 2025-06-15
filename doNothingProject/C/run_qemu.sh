#!/usr/bin/env sh

qemu-system-arm -machine netduinoplus2 -nographic -semihosting-config enable=on,target=native   -kernel build/do_nothing_c.bin