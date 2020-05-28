import sys
import libpm3

def main():
    print('Hello world')

    #libpm3.mainlib_open()
    libpm3.CommandReceived("hw status")
    #libpm3.mainlib_close()

if __name__ == "__main__":
    main()
