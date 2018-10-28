# unable to initialize frontend: Dialog (Ubuntu 18 image, 2018-10-28)

messages as below.

```
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
```

insert this line before apt install.

```
ENV DEBIAN_FRONTEND noninteractive
```
