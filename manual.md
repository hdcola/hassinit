# 使用手册

恭喜你成为老黄后宫的一份子，是不是特别的鸡冻呢！接下来，让我们开始一个令人兴奋的旅程

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

## 开鸡

### 浏览器访问的工具

* http://hassbian.local:8123 这是HomeAssistant的管理界面（后面简称ha管理）。默认密码```welcome```
* http://hassbian.local:8080 这是HomeBridge的管理界面（后面简称hb管理）。默认用户名```admin```、密码```admin```
* http://hassbian.local:8181 这是Cloud9的管理界面

### 安装app

去应用商店下载```Home Assistant```，使用ha管理的地址连接

### ssh

ssh端口22，用户名pi，密码raspberry

## 使用苹果家庭

### 加入HA

* 在苹果家庭中点"添加配件"
* 选择"没有代码或无法扫描"
* 选择"HomeAssistant Bridge"
* 在未认证配件里，选择"任然添加"
* 输入ha管理界面里"HomeKit Setup"下面的六位数字，如"263-66-703"

### 加入HB

* 在苹果家庭中点"添加配件"
* 选择"没有代码或无法扫描"
* 选择"HomeAssistant Bridge"
* 在未认证配件里，选择"任然添加"
* 输入hb管理界面里面的六位数字，如"123-45-789"

## 修改密码

* HA

通过Cloud9管理，在```.homeassistant/secrets.yaml```中修改```http_password:``` 条目

* HB

登录到hb管理界面，进入右上角```User Accounts```传送门

* SSH

ssh到pi上，passwd修改密码。如果嫌麻烦，找老黄请求翻牌子。

## 请求翻牌子

在HA和苹果家庭里，你都会看到一个开关叫```远程协助```，打开这个开关后，你就可以呼叫老黄，查找问题、升级。关闭```远程协助```则会关闭一切外网连接。建议平时都让```远程协助```开关都处在关闭状态。
