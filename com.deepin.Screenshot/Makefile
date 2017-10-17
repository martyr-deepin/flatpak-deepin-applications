BUILDER_OPTIONS = --force-clean --ccache --require-changes
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.ScreenShot.json

all: build bundle

build: $(MANIFEST)
	$(FLATPAK_BUILDER) \
		$(BUILDER_OPTIONS) \
		--repo=$(TARGET_REPO) \
		screenshot \
		$(MANIFEST)
bundle:
	 flatpak build-bundle ./repo bundle com.deepin.ScreenShot master


clean:
	rm -rf screenshot repo
