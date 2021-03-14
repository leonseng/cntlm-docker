# cntlm Docker

cntlm in a Docker image. Runs on Alpine Linux with the [Alpine cntlm community package](https://pkgs.alpinelinux.org/package/edge/community/x86/cntlm).

To build the image, run `docker build -t leonseng/cntlm:latest .`.

To start the container, run `docker run --detach --publish 3128:3128 --restart=always leonseng/cntlm:latest`

To configure cntlm, mount the configuration file over `/etc/cntlm.conf` with the `--volume` flag, e.g.: `--volume $(pwd)/cntlm.conf:/etc/cntlm.conf`

To print password hash (for updating password), run `echo <password> | docker run --rm leonseng/cntlm:latest -H -d <domain> -u <username>`
