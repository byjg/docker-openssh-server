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

# Passing more than one public key

Just add `SSH_PUBLIC_KEY` variables followed by 1, 2, 3. 

```bash
docker run \
   --rm \
   -p 2222:22 \
   -e SSH_PUBLIC_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAB...oOZRfcqYs4JPQgxpZ public-key" \
   -e SSH_PUBLIC_KEY1="ssh-rsa CCCCCC4AbCed12ECCCCCCCCCCCCC...hja9ajhskjhasjkla public-key" \
   -e SSH_PUBLIC_KEY2="ssh-rsa DDDDE5ua8AjajFDDDDDDDDDDDDDD...aha2ujaja81jggaaa public-key" \
   --name openssh-server \
   -d byjg/openssh-server
```


