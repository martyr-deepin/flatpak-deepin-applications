BUILDER_OPTIONS = --force-clean --ccache --require-changes
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.Movie.json

all: build bundle

build: $(MANIFEST)
	$(FLATPAK_BUILDER) \
		$(BUILDER_OPTIONS) \
		--repo=$(TARGET_REPO) \
		deepin-movie \
		$(MANIFEST)

bundle:
	flatpak build-bundle ./repo bundle com.deepin.Movie master

clean:
	rm -rf deepin-movie repo .flatpak-builder
