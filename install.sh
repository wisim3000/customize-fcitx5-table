#!/bin/bash

install_fcitx5() {
    name=$(ls *.conf | head -n 1 | sed "s/.conf//")
    conf=~/.local/share/fcitx5/inputmethod
    table=~/.local/share/fcitx5/table

    mkdir -p ${conf}
    cp ${name}.conf ${conf}

    libime_tabledict ${name}.txt ${table}/${name}.dict

    fcitx5-remote -e && fcitx5-remote -c

    echo donwe
}

install_fcitx5
