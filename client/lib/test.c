#include "libpm3.h"

int main(int argc, char *argv[]) {
    mainlib_open();
    int ret = CommandReceived("hw status");
    mainlib_close();
}
