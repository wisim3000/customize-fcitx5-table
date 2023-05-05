#!/bin/bash

. ./basic.sh

install_fcitx5 $(ls *.conf | xargs basename -s .conf)
