
static int ctr;
const int pi = 3;
const char hello[] = "Hello world";

int main(void)
{
    while(1)
    {
        ctr++;
    }
}

void SysTick_Handler(void)
{
    return;
}

void NMI_Handler(void)
{
    while(1);
}
void HardFault_Handler(void)
{
    while(1);
}
void MemManage_Handler(void)
{
    while(1);
}
void BusFault_Handler(void)
{
    while(1);
}
void UsageFault_Handler(void)
{
    while(1);
}