from __future__ import print_function
from __future__ import absolute_import
from __future__ import unicode_literals


import argparse
import io
import json
import sys


def clearpassword():
    print("hw")
    #contents = io.open(filename, encoding='UTF-8').read()
    return 0

def main(argv=None):
    parser = argparse.ArgumentParser()
    parser.add_argument('filenames', nargs='*', help='Filenames to fix')
    args = parser.parse_args(argv)
    clearpassword()
    retv = 0
    return retv
