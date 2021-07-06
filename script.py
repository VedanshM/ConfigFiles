#!/usr/bin/env python3
from argparse import ArgumentParser
import subprocess

parser = ArgumentParser(description='For load or dump the files')
group = parser.add_mutually_exclusive_group(required=True)
group.add_argument('-l', '--load', dest='load', action='store_true')
group.add_argument('-d', '--dump', dest='dump', action='store_true')
args = parser.parse_args()


class Path(object):
    def __init__(self, fpath, gpath):
        assert fpath is not None and gpath is not None
        self.finalPath = fpath
        self.gitPath = gpath


homeFiles = ['.Xresources',
             '.bashrc',
             '.shrc',
             '.gitconfig',
             '.vimrc',
             '.zshrc',
             '.p10k.zsh',
             '.aliases',
             '.profile',
             '.xinitrc',
             '.xinputrc',
             '.restic_complete',
             ]


files = {}

for i in homeFiles:
    files[i] = Path(fpath="~/{}".format(i), gpath='Files/{}'.format(i))


def dump():
    for paths in files.values():
        subprocess.run(
            ["cp {} {}".format(paths.gitPath, paths.finalPath)], shell=1)


def load():
    for paths in files.values():
        subprocess.run(
            ["cp {} {}".format(paths.finalPath, paths.gitPath)], shell=1)


if args.load:
    load()
else:
    dump()
