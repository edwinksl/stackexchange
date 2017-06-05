#!/usr/bin/env python

# Code for https://askubuntu.com/a/813787/15003

from datetime import datetime
import os
import os.path
import sys


def main(target):
    dir_path = os.path.abspath(target)
    for i in os.listdir(target):
        old_name = os.path.join(dir_path, i)
        d = datetime.strptime(i, '%d %b %Y').strftime('%Y-%m-%d')
        new_name = os.path.join(dir_path, d)
        os.rename(old_name, new_name)


if __name__ == '__main__':
    main(sys.argv[1])
