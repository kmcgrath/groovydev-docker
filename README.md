# groovydev

Groovy development with Vim+[Janus][janus-url]

Docker Hub: [kmcgrath/groovydev][groovydev-hub-url]

Github: [kmcgrath/docker-groovydev][groovydev-github-url]

## Use

### Get a shell

    docker run -it -v "$PWD":/code kmcgrath/groovydev bash

### Straight to vim

    docker run -it -v "$PWD":/go/src/APP  -w /go/src/APP kmcgrath/groovydev vim .


### Run gradle

    docker run -it -v "$PWD":/go/src/APP  -w /go/src/APP kmcgrath/groovydev gradle build


[groovydev-hub-url]: https://hub.docker.com/r/kmcgrath/groovydev/
[groovydev-github-url]: https://github.com/kmcgrath/docker-groovydev
[janus-url]: https://github.com/carlhuda/janus
