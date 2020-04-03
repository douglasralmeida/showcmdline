#include <stdio.h>
#include <wchar.h>
#include <windows.h>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPWSTR lpCmdLine, int nCmdShow) {
    wchar_t string[256] = {0};

    wcscat(string, L"\"");
    wcscat(string, lpCmdLine);
    wcscat(string, L"\"");
    MessageBoxW(0, string, L"CmdLine", MB_ICONINFORMATION);
    exit(EXIT_SUCCESS);
}
