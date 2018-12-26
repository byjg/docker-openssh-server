# Docker OpenSSH Server Image

This image runs a Simple OpenSSH Server.

# Command Line

```bash
docker run \
   --rm \
   -p 2222:22 \
   -e SSH_PUBLIC_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAB...oOZRfcqYs4JPQgxpZ public-key" \
   --name openssh-server \
   -d byjg/openssh-server
```

# Docker Compose

```yaml
version: '3.4'

services:
  ssh:
    image: byjg/openssh-server
    environment:
      - SSH_PUBLIC_KEY=ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAB...oOZRfcqYs4JPQgxpZ public-key
    ports:
      - 2222:22
```


