# hassinit

Hassbian初始化是一个烦人的事情，用这个项目把标准化的操作都整了，省得麻烦。

标准的安装

```
cd ~
rm -rf hassinit
git clone https://github.com/hdcola/hassinit.git
cd hassinit
./ainit.sh
./bupdate.sh
./hdinstall.sh
./zconfig.sh
```

如果你需要配置3.5的屏幕可以再执行
```
./zlcd.sh
```

在 /boot/config.txt里加入
```
dtoverlay=tft35a:rotate=270
```

在 /etc/rc.local里加入

```
tail -F /var/log/syslog
```
