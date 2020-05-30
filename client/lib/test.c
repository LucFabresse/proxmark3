#include "pm3.h"

int main(int argc, char *argv[]) {
    pm3_open();
    int ret = pm3_console("hw status");
    pm3_close();
}
