#!/usr/bin/python3

import argparse
import socket
import code
import readline
import signal
import sys

def SigHandler_SIGINT(signum, frame):
    print()
    sys.exit(0)

class Argparser(object):
    def __init__(self):
        parser = argparse.ArgumentParser()
        parser.add_argument("--string", type=str, help="string")
        parser.add_argument("--bool", action="store_true", help="bool", default=False)
        parser.add_argument("--dbg", action="store_true", help="debug", default=False)
        self.args = parser.parse_args()

# write code here
def premain(argparser):
    signal.signal(signal.SIGINT, SigHandler_SIGINT)
    #here
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    hive_address = ("localhost", 10000),
    sock.connect(hive_address)
    #sock.sendall("123")

def main():
    argparser = Argparser()
    if argparser.args.dbg:
        try:
            premain(argparser)
        except:
            variables = globals().copy()
            variables.update(locals())
            shell = code.InteractiveConsole(variables)
            shell.interact(banner="DEBUG REPL")
    else:
        premain(argparser)

if __name__ == "__main__":
    main()
