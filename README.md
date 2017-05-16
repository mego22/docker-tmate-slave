tmate-docker
============

Tmate.io docker server

If you want to build it:
```
docker build -t tmate-docker .
```

If you want to use it, and you build it:
```
docker run -d --name tmate --cap-add SETUID --cap-add SYS_ADMIN --cap-add SYS_CHROOT --cap-add SETGID -e HOST=example.com -e PORT=443 -p 443:443 -t tmate-docker
```

If you want to get the tmate config:
```
docker run -e HOST=example.com -e PORT=443 tmate-docker config
```

To know which port was tmate bound to, run:
```
docker ps # this will show you the container id
docker port <container id>
```
