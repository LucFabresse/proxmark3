import sys
import pm3

def main():
    print('Hello world')

    #pm3.mainlib_open()
    pm3.CommandReceived("hw status")
    #pm3.mainlib_close()

if __name__ == "__main__":
    main()
