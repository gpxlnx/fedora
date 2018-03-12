#!/usr/bin/python3

import argparse
import code
import readline
import signal
import sys

class Colors:
    purple = '\033[95m'
    blue = '\033[94m'
    green = '\033[92m'
    yellow = '\033[93m'
    red = '\033[91m'
    grey = '\033[1;37m'
    darkgrey = '\033[1;30m'
    cyan = '\033[1;36m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

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

def ffs(offset,header_list, numbered, *args):
    cn = Colors.green
    ch = Colors.cyan
    cd = Colors.blue
    cb = Colors.BOLD
    ci = Colors.red
    ce = Colors.ENDC
    max_column_width = []
    lines = []
    numbers_f = []
    dummy = []

    if numbered:
        numbers_f.extend(range(1, len(args[-1])+1))
        max_column_width.append(max([len(repr(number)) for number in numbers_f]))
        header_list.insert(0, "idx")

    for arg in args:
        max_column_width.append(max([len(repr(argette)) for argette in arg]))

    index = range(0, len(header_list))
    for header, width, i in zip(header_list, max_column_width, index):
        max_column_width[i] = max(len(header), width) + offset

    for i in index:
        dummy.append(ch + cb + header_list[i].ljust(max_column_width[i]) + ce)
    lines.append("".join(dummy))
    dummy.clear()

    index2 = range(0, len(args[-1]))
    for i in index2:
        if numbered:
            dummy.append(ci+cb+repr(i).ljust(max_column_width[0])+ce)
            for arg, width in zip(args, max_column_width[1:]):
                dummy.append(cd+repr(arg[i]).ljust(width)+ce)
        else:
            for arg, width in zip(args, max_column_width):
                dummy.append(cd+repr(arg[i]).ljust(width)+ce)
        lines.append("".join(dummy))
        dummy.clear()
    return lines

# write code here
def premain(argparser):
    signal.signal(signal.SIGINT, SigHandler_SIGINT)
    #here
    header_list = ["name", "age", "heigt", "weight"]
    args = [["farzad", "mahsa"],[29,26],[1.75, 1.55],[82, 54]]
    arg1 = ["farzad", "mahsa"]
    arg2 = [29,26]
    arg3 = [1.75, 1.55]
    arg4 = [82, 54]
    lines = ffs(2, header_list, True, arg1, arg2, arg3, arg4)
    for line in lines:
        print(line)

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
