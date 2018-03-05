#!/usr/bin/python3

import argparse
import code
import readline
import signal
import sys
from telegram.ext import Updater, CommandHandler
import logging
from coinmarketcap import networth, highpercentdump_bot
import json

telekey_json = "/home/bloodstalker/scripts/telekey.json"
json_key = json.load(open(telekey_json))
API_TOKEN = json_key['telekey']

def SigHandler_SIGINT(signum, frame):
    print()
    sys.exit(0)

def start(bot, update):
    bot.send_message(chat_id=update.message.chat_id, text="Hi... I'm bloodstalkers bot, nice to make your acquaintance.")

def net(bot, update):
    total = networth()
    bot.send_message(chat_id=update.message.chat_id, text=total)

def high(bot, update):
    total = highpercentdump_bot()
    total_str = "".join(total)
    bot.send_message(chat_id=update.message.chat_id, text=total_str)

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
    updater = Updater(token=API_TOKEN)
    dispatcher = updater.dispatcher
    logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s', level=logging.INFO)
    start_handler = CommandHandler("start", start)
    net_handler = CommandHandler("net", net)
    high_handler = CommandHandler("high", high)
    dispatcher.add_handler(start_handler)
    dispatcher.add_handler(net_handler)
    dispatcher.add_handler(high_handler)
    updater.start_polling()

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
