BUILDER_OPTIONS = --force-clean --ccache --require-changes
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.ImageViewer.json

all: build

build: $(MANIFEST)
				$(FLATPAK_BUILDER) \
								$(BUILDER_OPTIONS) \
								--repo=$(TARGET_REPO) \
								image-viewer \
								$(MANIFEST)

clean:
	rm -rf image-viewer repo .flatpak-builder
