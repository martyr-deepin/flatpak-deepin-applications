BUILDER_OPTIONS = --force-clean --ccache
TARGET_REPO = repo
FLATPAK_BUILDER = $(shell which flatpak-builder)
MANIFEST = com.deepin.VoiceRecorder.json

all: build bundle

build: $(MANIFEST)
	$(FLATPAK_BUILDER) \
		$(BUILDER_OPTIONS) \
		--repo=$(TARGET_REPO) \
		app \
		$(MANIFEST)

bundle:
	flatpak build-bundle ./repo bundle com.deepin.VoiceRecorder master

clean:
	rm -rf voicerecorder repo
