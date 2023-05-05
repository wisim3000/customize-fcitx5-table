#!/bin/bash

IM_CONF=~/.local/share/fcitx5/inputmethod
TABLE=~/.local/share/fcitx5/table
CONF_AUTO=~/.config/fcitx5/table

install_fcitx5() {
    name=$1

    mkdir -p ${IM_CONF}
    cp ${name}.conf ${IM_CONF}

    libime_tabledict ${name}.txt ${TABLE}/${name}.dict

    fcitx5-remote -e && fcitx5-remote -c

    echo done
}

uninstall_fcitx5() {
    name=$1

    rm -fv ${IM_CONF}/${name}.conf
    rm -fv ${TABLE}/${name}.dict

    # delete history
    rm -fv ${TABLE}/${name}.history
    rm -fv ${TABLE}/${name}.user.dict
    rm -fv ${CONF_AUTO}/${name}.conf

    echo done
}
