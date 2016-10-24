# autocommit
## Why?

为了进行编辑时认为的一些非关键点、但后续发现很关键的改动能够及时保存而产生编写此脚本的想法。

默认为60s上传一次，可修改源代码进行更改。

## Usage

后台运行此脚本即可。

`autocommit &`

## Version

20161024 使用重定向和`/dev/null`使脚本后台静默运行；另外除用`.gitignore`将本脚本放在`git`目录下运行外，还可以将脚本放在自建目录中`export $PATH:`，添加运行权限后，可在任意git中运行

20151025 默认注释掉了`git push`项，没有必要的带宽浪费