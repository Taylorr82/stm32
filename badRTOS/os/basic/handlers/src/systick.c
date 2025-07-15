/**
 * 
 */

#include "systick.h"


int systick = 0;

void badRTOS_IncrementTick(void)
{
  systick += 1;
}

int badRTOS_GetTick(void)
{
  return systick;
}