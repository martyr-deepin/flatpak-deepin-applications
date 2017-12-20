all:
	if ! [ -d /var/lib/dpkg ]; then \
		cp -a /usr/var / || true ; \
	fi
	set -e; \
	if test -d src; then \
		cd src && \
		dpkg-buildpackage -b -nc -d \
		--build-profiles=pkg.flatpak.app,nocheck,nodoc; \
	fi; \
	done

# This assumes we don't need to run maintainer scripts.
install:
	set -e; \
	for deb in *.deb; do \
		dpkg-deb --fsys-tarfile "$$deb" | \
		tar -xf- -C /app \
		--transform='s,^(\.?/)?(app|usr)/,,x'; \
	done
	sed -i 's|/usr/share/games/frozen-bubble|/app/share/games/frozen-bubble|g' /app/share/perl5/Games/FrozenBubble/Config.pm
	mkdir -p /app/bin 
	mv /app/games/* /app/bin
	if [ -d /app/share/glib-2.0/schemas ];then \
		glib-compile-schemas /app/share/glib-2.0/schemas ; \
	fi
