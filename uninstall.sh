#!/bin/bash

.  ./basic.sh

uninstall_fcitx5 $(ls *.conf | xargs basename -s .conf)