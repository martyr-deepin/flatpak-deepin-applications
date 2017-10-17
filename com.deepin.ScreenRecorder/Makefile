BUILDER_OPTIONS = --force-clean --ccache
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.ScreenRecorder.json

all: build bundle

build: $(MANIFEST)
	$(FLATPAK_BUILDER) \
		$(BUILDER_OPTIONS) \
		--repo=$(TARGET_REPO) \
		screenrecorder \
		$(MANIFEST)
bundle:
	 flatpak build-bundle ./repo bundle com.deepin.ScreenRecorder master


clean:
	rm -rf screenrecorder repo
