# 关于

Fcitx5 自定义形码输入法啊的简单安装脚本，默认的码表是安静郑码（拼音），但也可以用来安装五笔等其他形码。

安装目录位于`~/.local/share/fcitx5/`下的`imputmethod` 和`table` 文件夹。

# 用法

- `./install` 安装
- `./uninstall` 卸载
- `./uninstall --all` 卸载输入法生成的配置文件和历史记录

必须有且只有一个`conf`文件。

码表文件名必须与`conf`文件名相同。

卸载之后，请手动重启Fcitx5，安装不需要。
