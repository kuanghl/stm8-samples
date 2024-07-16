#### linux stm8s environment.

```sh
# 解压依赖
sudo apt-get install tar bzip2

# sdcc: https://sourceforge.net/projects/sdcc/files/
## sdcc在高版本ubuntu编译,在低版本运行问题(例如22.04编译，20.04运行)
strings /lib/x86_64-linux-gnu/libc.so.6 | grep GLIBC_ # 查看libc6版本ldd --version
sudo vim /etc/apt/sources.list # 加入deb http://mirrors.aliyun.com/ubuntu/ jammy main
sudo apt update
sudo apt install libc6 # 中间不要重启服务,否则系统可能损坏
sudo apt install libstdc++6 
tar -xvjf sdcc-4.4.0.tar.bz2 -C ./ # sdcc-4.4.0
cd ./sdcc-4.4.0/bin
./sdcc -v

# stmflash: https://github.com/vdudouyt/stm8flash.git
tar -xvjf stm8flash.tar.bz2 -C ./ # stm8flash

# hex2bin: https://github.com/rustbox/hex2bin.git
tar -zxvf hex2bin-2.5.1.tar.gz -C ./ # hex2bin-2.5.1
```