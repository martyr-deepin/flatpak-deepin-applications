BUILDER_OPTIONS = --rebuild-on-sdk-change --ccache --force-clean
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.Music.json

all: build bundle

build: $(MANIFEST)
	sed -i 's/BUILDVER/master/g' $(MANIFEST)
	$(FLATPAK_BUILDER) \
		$(BUILDER_OPTIONS) \
		--repo=$(TARGET_REPO) \
		app \
		$(MANIFEST)

bundle:
	flatpak build-bundle ./repo bundle com.deepin.Music master

clean:
	rm -rf app repo bundle
