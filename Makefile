SERVICE = mpd
REGGAE_PATH := /usr/local/share/reggae
PORTS = 6600 8000
DEVFS_RULESET ?= 6

.include <${REGGAE_PATH}/mk/service.mk>
