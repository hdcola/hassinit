# hassinit

Hassbian初始化是一个烦人的事情，用这个项目把标准化的操作都整了，省得麻烦。

## 标准的安装

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

可以使用 ```sudo dpkg-reconfigure tzdata``` 换你的时区

可以使用 ```znofrpconfig.sh``` 换一个没有远程协助开关的homeassistant

## 服务

* HomeAssistant

http://hassbian.local:8123 首次进入会要求你设置用户名和密码

* HomeBridge

http://hassbian.local:8080 默认用户： admin 默认密码： admin

* Cloud9

http://hassbian.local:8181


## 配置3.5寸TFT

如果你需要配置3.5的屏幕可以再执行
```
./zlcd.sh
```

在 /boot/config.txt里加入
```
dtoverlay=tft35a:rotate=270
```

启动pi自动登录
* sudo raspi-config
* 选择Boot Options
* Desktop / CLT
* console Autologin Text console
* finish

在 /etc/rc.local里加入

```
tail -F /var/log/syslog
```

进入python venv

```
sudo -u homeassistant -H -s
source /srv/homeassistant/bin/activate
```
