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

## 开机之后的所知

### 浏览器访问的工具

* http://hassbian.local:8123 这是HomeAssistant的管理界面（后面简称ha管理）
* http://hassbian.local:8080 这是HomeBridge的管理界面（后面简称hb管理）
* http://hassbian.local:8181 这是Cloud9的管理界面

### 手机app

去应用商店下载```Home Assistant```，使用ha管理的地址连接

## 苹果家庭

### 加入HA

* 在苹果家庭中点"添加配件"
* 选择"没有代码或无法扫描"
* 选择"HomeAssistant Bridge"
* 在未认证配件里，选择"任然添加"
* 输入ha管理界面里"HomeKit Setup"下面的六位数字，如"263-66-703"
