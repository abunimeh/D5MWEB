// LAST TESTED : 12/16/2018
#include <xil_types.h>
u32 uartcmd(u32 argA,u32 argB);
void menu_calls(int ON_OFF);
int sd_card();
#define D5M_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define D5M_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
