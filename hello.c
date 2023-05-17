#include "Gfuncs.h"

// build/bin/clang -S -emit-llvm ./hello.c --target=sim
// build/bin/llc --filetype=obj -march=sim hello.ll


int main() {

    int width = 1920;
    int heigth = 1080;
    init(width, heigth);

    int x = 0;
    int y = 0;
    while(is_window_opened())
    {
        put_pixel(x, y, 255, 0, 0, 255);
        flush();
        x++;
        y++;
    }

    return 0;
}