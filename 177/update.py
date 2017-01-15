#!/usr/bin/env python
import os

def update(dotfile):
    update_command = "cp -a " + dotfile + " ."
    os.system(update_command)

def fileToList(filelist):
    flist = []
    with open(filelist,'r') as dotfiles:
        for item in dotfiles:
            flist.append(item[:-1])
    return flist


def main():
    dotfiles = fileToList("file.list")
    for dotfile in dotfiles:
        update(dotfile)


if __name__ == '__main__':
    main()
