PACKAGER_URL := https://raw.githubusercontent.com/BigWigsMods/packager/master/release.sh

.PHONY: check dist

all: check

check:
	@luacheck -q $(shell git ls-files '*.lua')

dist:
	@curl -s $(PACKAGER_URL) | bash -s -- -d -S -n 'AddonLocale-{project-version}{nolib}{classic}'
