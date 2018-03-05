#!/bin/python3
import argparse
import hashlib
import hmac
import json
import requests
import os
import sys
import csv
import time
import atexit
import signal

api_url_base = "https://api.coinmarketcap.com/v1/ticker/"
assets_file = "/home/bloodstalker/scripts/assets.json"
api_url_base_shapeshift = "https://shapeshift.io/getcoins"
test_url = "https://api.coinmarketcap.com/v1/ticker/?start=0&limit=300"

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

def get_info_w_name(api_url, name):
    response = requests.get(api_url + name)
    if response.status_code == 200: return json.loads(response.content.decode('utf-8'))
    else : return None

def changelly():
    API_URL = 'https://api.changelly.com'
    API_KEY = '1a17d70c8b624a398c3ec1e4dbffbaa5'
    API_SECRET = '4b7a4226869ef3f4b512e7beac21ea41b4a5127d54e076cd9350f6d5059ee6a7'
    message = {
        'jsonrpc': '2.0',
        'id': 1,
        'method': 'getCurrencies',
        'params': []
    }

    serialized_data = json.dumps(message)
    sign = hmac.new(API_SECRET.encode('utf-8'), serialized_data.encode('utf-8'), hashlib.sha512).hexdigest()
    headers = {'api-key': API_KEY, 'sign': sign, 'Content-type': 'application/json'}
    response = requests.post(API_URL, headers=headers, data=serialized_data)
    return (response.json()['result'])

def highpercentdump(number):
        dic_7d = {}
        dic_7d_sorted = {}
        list_7d_key = []
        list_7d_value = []

        dic_24h = {}
        dic_24h_sorted = {}
        list_24h_key = []
        list_24h_value = []

        dic_1h = {}
        dic_1h_sorted = {}
        list_1h_key = []
        list_1h_value = []

        res = get_info_w_name(test_url, "")

        for i in range(0,300):
            price = res[i]["percent_change_7d"]
            if price == None: price = 0
            dic_7d[res[i]["name"]] = float(price)
        for key, value in sorted(dic_7d.items(), key=lambda kv:(kv[1],kv[0])):
            dic_7d_sorted[key] = value
        for k,v in dic_7d_sorted.items():
            list_7d_key.append(k)
            list_7d_value.append(v)

        for i in range(0,300):
            price = res[i]["percent_change_24h"]
            if price == None: price = 0
            dic_24h[res[i]["name"]] = float(price)
        for key, value in sorted(dic_24h.items(), key=lambda kv:(kv[1],kv[0])):
            dic_24h_sorted[key] = value
        for k,v in dic_24h_sorted.items():
            list_24h_key.append(k)
            list_24h_value.append(v)

        for i in range(0,300):
            price = res[i]["percent_change_1h"]
            if price == None: price = 0
            dic_1h[res[i]["name"]] = float(price)
        for key, value in sorted(dic_1h.items(), key=lambda kv:(kv[1],kv[0])):
            dic_1h_sorted[key] = value
        for k,v in dic_1h_sorted.items():
            list_1h_key.append(k)
            list_1h_value.append(v)

        col_width_1 = max(len(word) for word in list_7d_key) + max(len(repr(word)) for word in list_7d_value) + 2
        col_width_2 = max(len(word) for word in list_7d_key) + max(len(repr(word)) for word in list_7d_value) + 2
        col_width_3 = max(len(word) for word in list_7d_key) + max(len(repr(word)) for word in list_7d_value) + 2
        col_width = max(col_width_1, col_width_2, col_width_3, 40)
        print(("\t" + Colors.green +Colors.BOLD + "7d:").ljust(col_width + 10), end="")
        print("24h:".ljust(col_width), end="")
        print(("1h:" + Colors.ENDC).ljust(col_width))
        for i in range(300-number, 300):
            print((Colors.red + Colors.BOLD + repr(300-i) + Colors.ENDC).ljust(21), end="")
            print((Colors.blue+list_7d_key[i]+Colors.ENDC+":"+Colors.cyan+Colors.BOLD+repr(list_7d_value[i])+Colors.ENDC).ljust(col_width + 24), end="")
            print((Colors.blue+list_24h_key[i]+Colors.ENDC+":"+Colors.cyan+Colors.BOLD+repr(list_24h_value[i])+Colors.ENDC).ljust(col_width+24), end="")
            print((Colors.blue+list_1h_key[i]+Colors.ENDC+":"+Colors.cyan+Colors.BOLD+repr(list_1h_value[i])+Colors.ENDC).ljust(col_width))
        print()
        for i in range(number, -1, -1):
            print((Colors.red + Colors.BOLD + repr(300-i) + Colors.ENDC).ljust(21), end="")
            print((Colors.blue+list_7d_key[i]+Colors.ENDC+":"+Colors.cyan+Colors.BOLD+repr(list_7d_value[i])+Colors.ENDC).ljust(col_width + 24), end="")
            print((Colors.blue+list_24h_key[i]+Colors.ENDC+":"+Colors.cyan+Colors.BOLD+repr(list_24h_value[i])+Colors.ENDC).ljust(col_width+24), end="")
            print((Colors.blue+list_1h_key[i]+Colors.ENDC+":"+Colors.cyan+Colors.BOLD+repr(list_1h_value[i])+Colors.ENDC).ljust(col_width))

        one = []
        one.append("7d:\n\n")
        for i in range(299, 300-number, -1):
            one.append(repr(list_7d_key[i]))
            one.append("\t")
            one.append(repr(list_7d_value[i]))
            one.append("\n")
        for i in range(number, -1, -1):
            one.append(repr(list_7d_key[i]))
            one.append("\t")
            one.append(repr(list_7d_value[i]))
            one.append("\n")

        one.append("\n\n24h:\n\n")
        for i in range(299, 300-number, -1):
            one.append(repr(list_24h_key[i]))
            one.append("\t")
            one.append(repr(list_24h_value[i]))
            one.append("\n")
        for i in range(number, -1, -1):
            one.append(repr(list_24h_key[i]))
            one.append("\t")
            one.append(repr(list_24h_value[i]))
            one.append("\n")

        one.append("\n\n1h:\n\n")
        for i in range(299, 300-number, -1):
            one.append(repr(list_1h_key[i]))
            one.append("\t")
            one.append(repr(list_1h_value[i]))
            one.append("\n")
        for i in range(number, -1, -1):
            one.append(repr(list_1h_key[i]))
            one.append("\t")
            one.append(repr(list_1h_value[i]))
            one.append("\n")

        return one


class Argparser(object):
    def __init__(self):
        parser = argparse.ArgumentParser()
        parser.add_argument("--name", type=str, help="path to the wasm text file")
        parser.add_argument("--worth", type=str, help="single asset worth")
        parser.add_argument("--xx", type=str, nargs=2, help="convert")
        parser.add_argument("--xxv", type=float, help="xx multiplier")
        parser.add_argument("--gen", type=str, nargs=2, help="general option")
        parser.add_argument("--cap", type=str, help="market cap")
        parser.add_argument("--rank", type=str, help="market cap rank")
        parser.add_argument("--total", action="store_true", help="total", default=False)
        parser.add_argument("--ava", type=str, help="is currency available on changelly")
        parser.add_argument("--avass", type=str, help="is currency available on shapeshift")
        parser.add_argument("--cglistall", action="store_true", help="list all currencies available on changelly", default=False)
        parser.add_argument("--test", action="store_true", help="test switch", default=False)
        parser.add_argument("--watchlist", type=str, nargs="+", help="watch list")
        parser.add_argument("--ss", type=str, nargs="+", help="watchlist on shapeshift")
        parser.add_argument("--dy", type=int, help="lazy")
        parser.add_argument("--demon", action="store_true", help="daemon mode", default=False)
        self.args = parser.parse_args()

class daemon:
    def __init__(self, pidfile):
        self.pidfile = pidfile

    def daemonize(self):
        try:
            pid = os.fork()
            if pid > 0: sys.exit(0)
        except OSError as err:
            sys.stderr.write('fork #1 failed: {0}\n'.format(err))
            sys.exit(1)
        os.chdir('/')
        os.setsid()
        os.umask(0)
        try:
            pid = os.fork()
            if pid > 0: sys.exit(0)
        except OSError as err:
            sys.stderr.write('fork #2 failed: {0}\n'.format(err))
            sys.exit(1)
        sys.stdout.flush()
        sys.stderr.flush()
        si = open(os.devnull, 'r')
        so = open(os.devnull, 'a+')
        se = open(os.devnull, 'a+')
        os.dup2(si.fileno(), sys.stdin.fileno())
        os.dup2(so.fileno(), sys.stdout.fileno())
        os.dup2(se.fileno(), sys.stderr.fileno())
        atexit.register(self.delpid)
        pid = str(os.getpid())
        with open(self.pidfile,'w+') as f: f.write(pid + '\n')

    def delpid(self):
        os.remove(self.pidfile)

    def start(self):
        try:
            with open(self.pidfile,'r') as pf:
                pid = int(pf.read().strip())
        except IOError:
            pid = None
        if pid:
            message = "pidfile {0} already exist. " + "Daemon already running?\n"
            sys.stderr.write(message.format(self.pidfile))
            sys.exit(1)
        self.daemonize()
        self.run()

    def stop(self):
        try:
            with open(self.pidfile,'r') as pf:
                pid = int(pf.read().strip())
        except IOError:
            pid = None
        if not pid:
            message = "pidfile {0} does not exist. " + "Daemon not running?\n"
            sys.stderr.write(message.format(self.pidfile))
            return
        try:
            while 1:
                os.kill(pid, signal.SIGTERM)
                time.sleep(0.1)
        except OSError as err:
            e = str(err.args)
            if e.find("No such process") > 0:
                if os.path.exists(self.pidfile):
                    os.remove(self.pidfile)
            else:
                print (str(err.args))
                sys.exit(1)

    def restart(self):
        self.stop()
        self.start()

    def run(self):
        pass

def networth():
    net = float()
    assets = json.load(open(assets_file))
    for asset in assets:
        price = get_info_w_name(api_url_base, asset)[0]["price_usd"]
        net += assets[asset] * float(price)
    return int(net)

def highpercentdump_bot():
    return highpercentdump(22)

def main():
    argparser = Argparser()

    if argparser.args.name:
        name = argparser.args.name
        res = get_info_w_name(api_url_base, name)
        if res is not None: print(res[0]['price_usd'])

    if argparser.args.cap:
        name = argparser.args.cap
        res = get_info_w_name(api_url_base, name)
        if res is not None: print(res[0]['market_cap_usd'])

    if argparser.args.rank:
        name = argparser.args.rank
        res = get_info_w_name(api_url_base, name)
        if res is not None: print(res[0]['rank'])

    if argparser.args.gen:
        name = argparser.args.gen[0]
        cat = argparser.args.gen[1]
        res = get_info_w_name(api_url_base, name)
        if res is not None: print(res[0][cat])

    if argparser.args.worth:
        net = float()
        assets = json.load(open(assets_file))
        for asset in assets:
            if asset == argparser.args.worth:
                price = get_info_w_name(api_url_base, asset)[0]["price_usd"]
                net = assets[asset] * float(price)
                print(int(net))
                break

    if argparser.args.total:
        net = float()
        assets = json.load(open(assets_file))
        for asset in assets:
            price = get_info_w_name(api_url_base, asset)[0]["price_usd"]
            net += assets[asset] * float(price)
        print("{:,}".format(int(net)))

    if argparser.args.xx:
        value = 1.0
        name1 = argparser.args.xx[0]
        name2 = argparser.args.xx[1]
        res1 = get_info_w_name(api_url_base, name1)[0]["price_usd"]
        res2 = get_info_w_name(api_url_base, name2)[0]["price_usd"]
        if argparser.args.xxv: value = argparser.args.xxv
        print(value*float(res1)/float(res2))

    if argparser.args.ava:
        currencies = changelly()
        for currency in currencies:
            if currency == argparser.args.ava:
                print ("YES")
                return
        print("NO")

    if argparser.args.avass:
        currencies = get_info_w_name(api_url_base_shapeshift, "")
        for currency in currencies:
            if currency.lower() == argparser.args.avass:
                print ("YES")
                return
        print("NO")

    if argparser.args.cglistall:
        currencies = changelly()
        for currency in currencies:
            print(currency + " ", end="")
        print()

    if argparser.args.watchlist:
        ret = []
        currencies = changelly()
        for currency in currencies:
            for item in argparser.args.watchlist:
                if currency == item:
                    ret.append(item)
        for item in ret:
            print(item.upper() + " ", end="")
        print()

    if argparser.args.ss:
        ret = []
        result = get_info_w_name(api_url_base_shapeshift, "")
        for currency in result:
            for item in argparser.args.ss:
                if currency.lower() == item and result[currency]['status'] == "available":
                    ret.append(item)
        for item in ret:
            print(item.upper() + " ", end="")
        print()

    if argparser.args.dy:
        highpercentdump(argparser.args.dy)

if __name__ == "__main__":
    main()
