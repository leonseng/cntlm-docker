# Cntlm Docker

Cntlm in a Docker image.

To build the image, run `docker build -t leonseng/cntlm:latest .`.

To start the container, run `docker run --detach --publish 3128:3128 --restart=always leonseng/cntlm:latest`

To configure cntlm, mount the configuration file over `/etc/cntlm.conf` with the `docker run` `--volume` flag, e.g.: `docker run --detach --publish 3128:3128 --restart=always --volume $(pwd)/cntlm.conf:/etc/cntlm.conf leonseng/cntlm:latest`

To print password hash (for updating password), run `echo <password> | docker run --rm leonseng/cntlm:latest -H -d <domain> -u <username>`
