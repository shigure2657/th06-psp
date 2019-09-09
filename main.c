#include "../include/psp_dx/dxlibp.h"

PSP_MODULE_INFO("DxLib_LBL", 0, 1, 1);
PSP_MAIN_THREAD_ATTR(THREAD_ATTR_USER);

void initial_logo()
{
    int bg;
    int t;
    bg = LoadGraph("./img/th06logo.png");
    t = GetNowCount();

    while (GetNowCount() - t < 5000) {
         ClearDrawScreen();
         DrawGraph(0,0,bg,FALSE);
         ScreenFlip();
    }
}

int main()
{
    if(DxLib_Init() == -1)return -1;
    initial_logo();

    int menu_bg;
    menu_bg = LoadGraph("./img/title00.png");
    while (ProcessMessage() != -1) {
        ClearDrawScreen();
        DrawGraph(58,0,menu_bg,FALSE);
        ScreenFlip();
    }
    DxLib_End();
    return 0;
}

