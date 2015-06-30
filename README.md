# CouchPotato for Raspberry Pi 2

This is a Dockerfile to set up [CouchPotato](https://couchpota.to/).

# Usage

```shell
$ docker run \
  -p 5050:5050
  -v /mnt/data:/data
  -v ./config:/config
  nunofgs/rpi-couchpotato
```
