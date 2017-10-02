# baseimage
Combined/simplified repo fo whw3 docker base images. Images intended for use with Raspberry Pi3
```
cd /srv/docker
git clone https://github.com/whw3/baseimage.git
cd baseimage
./configure
make all
```
### Make Targets:
* alpine 
* rpi
* buildpack-deps
* all
* build
* push
* release
* clean

### Images
* whw3/alpine:3.5               whw3/alpine:3.5.2
* whw3/baseimage:alpine         whw3/alpine:3.6             whw3/alpine:3.6.2 whw3/alpine:latest 
* whw3/baseimage:buildpack-deps whw3/buildpack-deps:latest  whw3/buildpack-deps:rpi-s6
* whw3/baseimage:rpi            whw3/rpi:latest
* whw3/baseimage:rpi-s6         whw3/rpi:s6                 whw3/rpi-s6:latest
* whw3/buildpack-deps:curl      whw3/buildpack-deps:rpi-curl
* whw3/buildpack-deps:curl-s6   whw3/buildpack-deps:rpi-s6-curl
* whw3/buildpack-deps:rpi
* whw3/buildpack-deps:rpi-s6-   scm whw3/buildpack-deps:scm-s6
* whw3/buildpack-deps:rpi-scm   whw3/buildpack-deps:scm
* whw3/rpi:backports            whw3/rpi-backports:latest
* whw3/rpi-s6:backports         whw3/rpi-s6-backports:latest

### Tags
**Baseimage** *(whw3/baseimage)*
  * alpine
  * buildpack-deps
  * rpi
  * rpi-s6

**Alpine** *(whw3/alpine)*
  * 3.5, 3.5.2
  * 3.6.2, 3.6, latest

**RPI** *(whw3/rpi)*
  * latest
  * s6
  * backports 

**RPI-S6** *(whw3/rpi-s6)*
  * latest
  * backports

**Buildpack-deps** *(whw3/buildpack-deps)*
  * rpi-curl. curl
  * rpi-scm, scm
  * rpi
  * rpi-s6-scm, scm-s6
  * rpi-s6-curl, curl-s6
  * rpi-s6. latest

**Backports**
* whw3/rpi-backports:latest
* whw3/rpi-s6-backports:latest
