NAME =			scaleway-kubernetes
VERSION =		1.5.3
TITLE =			Kubernetes
DESCRIPTION =		Kuberenetes v1.5.3
SOURCE_URL =		https://github.com/avikez/scaleway-kubernetes
DEFAULT_IMAGE_ARCH =	x86_64
IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	docker

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:

	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
