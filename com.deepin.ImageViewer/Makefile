BUILDER_OPTIONS = --force-clean --ccache --require-changes
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.ImageViewer.json

all: build bundle

build: $(MANIFEST)
	$(FLATPAK_BUILDER) \
		$(BUILDER_OPTIONS) \
		--repo=$(TARGET_REPO) \
		image-viewer \
		$(MANIFEST)
bundle:
	flatpak build-bundle ./repo bundle com.deepin.ImageViewer master

clean:
	rm -rf image-viewer repo .flatpak-builder
