#include "../include/psp_dx/dxlibp.h"

PSP_MODULE_INFO("DxLib_LBL", 0, 1, 1);
PSP_MAIN_THREAD_ATTR(THREAD_ATTR_USER);


int main()
{
    int bg;
    if(DxLib_Init() == -1)return -1;
    bg = LoadGraph("./DATE/lbl.png");
    while(ProcessMessage() != -1)
    {
        ClearDrawScreen();
        DrawGraph(0,0,bg,FALSE);
        ScreenFlip();
    }
    DxLib_End();
    return 0;
}

