import sys
import pm3

def main():
    print('Hello world')

    #pm3.open("/dev/ttyACM0")
    pm3.console("hw status")
    #pm3.close()

if __name__ == "__main__":
    main()
