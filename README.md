# docker-perlFCGI
The docker I use to test perl-based CGI apps.

---

## Usage
#### Building
`docker build -t dlakomy/perl-fcgi .`

#### Running
`docker run -p 80:80 -d -v /PATH/TO/THE/CGI/APP:/var/www/my_site:ro dlakomy/perl-fcgi`

You need to provide the path to your CGI app's index file (I capitalised the place for it above). Don't modify this part: `/var/www/my_site`. Of&nbsp;course you can map another port, instead of `80`. Just replace the first `80` above with the port number you want to use.

---

## Credits
- Denis S. Filimonov ([fastcgi-wrapper.pl](http://www.ruby-forum.com/topic/145858#645832) author),
- Soumik Ghosh (the author of the [guide](http://nginxlibrary.com/perl-fastcgi/) I used),
- nginx team (many thanks for providing [the official Docker](https://hub.docker.com/r/library/nginx/)).

---

The Docker Hub repository can be found [here](https://hub.docker.com/r/dlakomy/perl-fcgi/).
