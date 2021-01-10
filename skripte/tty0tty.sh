#Version 1 2021-01-06

#!/bin/bash

skripte/github.sh

git clone https://github.com/freemed/tty0tty

cd tty0tty/module

make

sudo cp tty0tty.ko /lib/modules/$(uname -r)/kernel/drivers/misc/

sudo depmod

sudo modprobe tty0tty

sudo chmod 666 /dev/tnt*

echo =====tty0tty ist installiert=====
