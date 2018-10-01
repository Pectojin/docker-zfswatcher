# zfswatcher
Zfswatcher container for monitoring the Zettabyte File System

Example run command:
```
docker run -d -v zfswatcher_config:/zfswatcher_config -p 8990:8990 --device /dev/zfs:/dev/zfs:rw pectojin/zfswatcher
```

Docker-compose example:
```
version: '2'
services:
  zfswatcher:
    image: pectojin/zfswatcher:latest
    volumes:
      - /etc/zfswatcher:/zfswatcher_config:rw
      - /var/log/zfswatcher/zfswatcher.log:/var/log/zfswatcher/zfswatcher.log:rw
      - /dev/log:/dev/log:rw
    ports:
      - 8990:8990
    devices:
      - /dev/zfs:/dev/zfs:rw
    restart: always
```

Based on [crazymanjinn/docker-zfswatcher](https://github.com/crazymanjinn/docker-zfswatcher) but using [rouben's build](https://github.com/rouben/zfswatcher) because it's now the leading repo ([damicon repo](https://github.com/damicon/zfswatcher) hasn't been updated since 2013)
