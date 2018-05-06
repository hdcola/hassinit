# 使用手册

恭喜你成为老黄后宫的一份子，是不是特别的鸡冻呢！接下来，让我们开始一个令人兴奋的开始。

## 设置WiFi网络

如果你是使用WiFi，在sd卡的根目录建一个文件，名为```wpa_supplicant.conf```：

```
country=CN
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
        ssid="s1"
        psk="p1"
        key_mgmt=WPA-PSK
        priority=1
    }
```

* ssid写你的无线网络的名称
* psk写你的无线网络的密码
