# docker-plantuml-server-ja

* [plantuml-server](https://github.com/plantuml/plantuml-server) in Docker.
* [neam/docker-plantuml-server](https://github.com/neam/docker-plantuml-server) japanese fonts added.

## Usage

```sh
# either run in foreground (ctrl-c exits the server)
docker run -it -p 8080:8080 --rm tukiyo3/plantuml-server-ja

# or in background (server keeps running until specifically killed)
docker logs -f $(docker run -d -p 8080:8080 tukiyo3/plantuml-server-ja)
```

Visit http://ip-of-your-docker-host:8080 in your browser
