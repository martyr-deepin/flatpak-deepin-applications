BUILDER_OPTIONS = --force-clean --ccache --require-changes
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.Music.json

all: build

build: $(MANIFEST)
				$(FLATPAK_BUILDER) \
								$(BUILDER_OPTIONS) \
								--repo=$(TARGET_REPO) \
								music \
								$(MANIFEST)

clean:
	rm -rf sublime repo .flatpak-builder
