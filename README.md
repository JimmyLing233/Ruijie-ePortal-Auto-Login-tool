<div align="center">
<h1>ElectricityBalanceReminder-HualiCollege</h1>
锐捷校园网ePortal Web（网页认证）自动登录脚本
<br><br>
  
[![Licence](https://img.shields.io/badge/LICENSE-MIT-green.svg?style=for-the-badge)](LICENSE)

</div>

## 配置
### 获取登录数据
1. 首先跳转到校园网登录界面，按下F12打开开发者工具，选择“网络”-“Fetch/XHR<br>
![1](/img/01.avif)

2. 然后登录您的账号，在登陆成功后查看开发者工具中的“InterFace.do?method=login”
![2](/img/02.avif)

3. 右键单击，选择“复制”-“以cURL(bash)格式复制”
![3](/img/03.avif)

4. 你得到了一个类似于一下数据的东西
```bash
curl 'http://xxx.xxx.xxx.xxx/eportal/InterFace.do?method=login' 
  -H 'Accept: */*'  \
  -H 'Accept-Language: zh-CN,zh;q=0.9,xxxxxxxxxxxxxxxxxx(省略)'  \
  -H 'Connection: keep-alive'  \
  -H xxxxxxxxxxxxxxxxxxxxxx(以下省略) 
  --insecure
```

5. 请删除所有的"\"、换行和其前后多余的空格（仅保留一个空格），将其变成类似于以下格式：
```bash
curl 'http://10.xx.xx.xx/eportal/InterFace.do?method=login' -H 'Accept: */*' -H 'Accept-Language: zh-CN,xxxxxxxxxxxxx' -H 'Connection: keep-alive' xxxxxxxxxxxxxxxxxxxxxx(以下省略) 
```

6. 将此项目shell脚本中的<脚本>复制为您刚才在第5步中得到的内容。

### 运行
```bash
chmod xyw.sh
./xyw.sh
```



## 免责声明
注意：本脚本仅仅只提供了一个代替手动登录的方法，并不提供包括任何绕过、破解等行为。请确定您的学校允许此行为，作者对于此造成的任何后果不承担任何责任。<br>
**本工具仅供学习和研究使用，使用本工具所产生的任何后果由使用者自行承担。<br>
本工具僅供學習和研究使用，使用本工具所產生的任何後果由使用者自行承擔。<br>
This tool is only for learning and research purposes, and any consequences arising from the use of this tool are borne by the user.**

## 许可证
[MIT License](LICENSE)
