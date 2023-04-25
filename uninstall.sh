#!/bin/bash

uninstall_fcitx5() {
    name=$(ls *.conf | head -n 1 | sed "s/.conf//")
    conf=~/.local/share/fcitx5/inputmethod
    table=~/.local/share/fcitx5/table

    rm -fv ${conf}/${name}.conf
    rm -fv ${table}/${name}.dict

    if [[ $# != 0 && $1 == "all" ]]; then
        rm -fv ${table}/${name}.{history,user.dict}
        rm -fv ~/.config/fcitx5/table/${name}.conf
    fi

    echo done
}

if [ $# == 0 ]; then
    uninstall_fcitx5
elif [[ $1 == "--help" || $1 == "-h" ]]; then
    echo -e "-a, --all\t删除所有配置文件以及历史记录"
    echo -e "-h, --help\t帮助"
elif [[ $1 == "--all" || $1 == "-a" ]]; then
    uninstall_fcitx5 all
fi
