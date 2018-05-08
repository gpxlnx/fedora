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
        parser.add_argument("--com", type=str, nargs="+", help="string")
        parser.add_argument("--bool", action="store_true", help="bool", default=False)
        parser.add_argument("--dbg", action="store_true", help="debug", default=False)
        #self.args = parser.parse_args()
        self.args, self.rest = parser.parse_known_args()

# write code here
def premain(argparser):
    signal.signal(signal.SIGINT, SigHandler_SIGINT)
    #here
    #print(argparser.rest)
    #sys.argv[0] = "/home/bloodstalker/scripts/hived"
    sys.argv.pop(0)
    #print("argc " + repr(len(sys.argv)))
    #print("argv " + repr(sys.argv))
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_address = ("localhost", 11111)
    sock.connect(server_address)
    msg = " ".join(argparser.rest)
    #print(msg)
    try:
        sock.sendall(bytes(msg, "utf-8"))
        output = sock.recv(1024)
        out2 = [c for c in output.decode("utf-8") if c != "\n"]
        print("".join(out2))
    finally:
        pass
        #sock.close()

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
