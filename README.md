# fishmlserv

### Deploy
![image](https://github.com/user-attachments/assets/aa0556f8-1873-4adc-af03-69b0a1a69eb4)

### Run
- dev
- http://localhost:8000/docs
```bash
# uvicorn --help
$ uvicorn src.fishmlserv.main:app --reload
```
- prd
```bash
$ uvicorn src.fishmlserv.main:app --host 0.0.0.0 --port 8949
```

### Docker
```bash
$ sudo docker build -t fishmlserv:0.4.0 .
$ sudo docker run -d --name fmlserv-040 -p 8877:8765 fishmlserv:0.4.0

# docker 컨테이너 안으로...
$ sudo docker exec -it fml071 bash

# docker 컨테이너 안에서 ...
root@7244097edb66:/code# cat /etc/os-release
PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"

# 다시 호스트OS(WSL) 로 exit
root@7244097edb66:/code# exit
``` 
### LB
```bash
$ sudo docker build -t ml-lb:1.5.0 LB/

$ sudo docker run --name nginx_lb-2 -d -p 8765:80 
```


### Fly.io
```bash
$ fly launch --no-deploy
$ flyctl launch --name mariofish
$ flyctl scale memory 256
$ flyctl deploy
```

### Ref
- https://curlconverter.com/python

