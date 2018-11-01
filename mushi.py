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

def SigHandler_Timeout(signum, frame):
    print("mushi timed out.")
    raise Exception("time out")

class Argparser(object):
    def __init__(self):
        self.parser = argparse.ArgumentParser()
        self.parser.add_argument("--com", type=str, nargs="+", help="string")
        self.parser.add_argument("--bool", action="store_true", help="bool", default=False)
        self.parser.add_argument("--dbg", action="store_true", help="debug", default=False)

    def parse(self, args):
        self.args, self.rest = self.parser.parse_known_args(args)

def start_connections(host, port, num_conns):
    server_addr = (host, port)
    for i in range(0, num_conns):
        connid = i + 1
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.setblocking(False)
        sock.connect_ex(server_addr)
        events = selectors.EVENT_READ | selectors.EVENT_WRITE
        data = types.SimpleNamespace(connid=connid, msg_total=sum(len(m) for m in messages), recv_total=0, messages=list(messages), outb=b"")
        sel.register(sock, events, data)

def service_connection(ket, mask):
    sock = key.fileobj
    data = key.data
    if mask & selectors.EVENT_READ:
        recv_data = sock.recv(4096)
        if recv_data:
            data.recv_total += len(recv_data)
        if not recv_data or data.recv_total== data.msg_total:
            sel.unregister()
            sock.close()
    if mask & selectors.EVENT_WRITE:
        if not data.outb and data.messages:
            data.outb = data.messages.pop(0)
        if data.outb:
            sent = sock.send(data.outb)
            data.outb = data.outb[sent:]

# write code here
def premain(argparser):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_address = ("localhost", 11111)
    sock.connect(server_address)
    msg = " ".join(argparser.rest)
    try:
        sock.sendall(bytes(msg, "utf-8"))
        output = sock.recv(1024)
        out2 = [c for c in output.decode("utf-8") if c != "\0"]
        print("".join(out2))
    finally:
        pass
        sock.close()

def main(argv):
    argparser = Argparser()
    argparser.parse(argv)
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
    main(sys.argv[1:])
