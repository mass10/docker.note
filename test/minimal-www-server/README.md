#Minimal www server with Nginx in Docker container.

building docker image

```
$ sudo docker build -t minimal-www-server .
$ sudo docker images
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
minimal-www-server    latest              e0874cd32175        6 seconds ago       192.5 MB
```

running

```
$ sudo docker run --name xxxxxxxxxxxx -d -p 80:80 minimal-www-server
$ sudo docker ps
CONTAINER ID        IMAGE                COMMAND                  CREATED             STATUS              PORTS                         NAMES
c31b4a725db1        minimal-www-server   "nginx -g 'daemon off"   42 seconds ago      Up 41 seconds       0.0.0.0:80->80/tcp, 443/tcp   xxxxxxxxxxxx
```

