BUILDER_OPTIONS = --force-clean --ccache --require-changes
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.VoiceRecorder.json

all: build

build: $(MANIFEST)
				$(FLATPAK_BUILDER) \
								$(BUILDER_OPTIONS) \
								--repo=$(TARGET_REPO) \
								build \
								$(MANIFEST)

clean:
	rm -rf build repo .flatpak-builder
