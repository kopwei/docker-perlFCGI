# ipxe builder
The docker used to build ipxe boot image

---

## Usage
#### Building
`docker build -t kopkop/ipxebuilder .`

#### Running
`docker run -p 8080:80 -d kopkop/ipxebuilder`

---

## Credits
- Denis S. Filimonov ([fastcgi-wrapper.pl](http://www.ruby-forum.com/topic/145858#645832) author),
- Soumik Ghosh (the author of the [guide](http://nginxlibrary.com/perl-fastcgi/) I used),
- nginx team (many thanks for providing [the official Docker](https://hub.docker.com/r/library/nginx/)).
- DLakomy

---

The Docker Hub repository can be found [here](https://hub.docker.com/r/kopkop/ipxebuilder/).
