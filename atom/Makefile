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
	mkdir -p /app/bin
	mv /app/opt/atom /app/atom
	ln -sf /app/atom/resources/app/apm/node_modules/.bin/apm /app/bin/apm
	ln -sf /app/atom/atom /app/bin/atom
	sed -i 's|/opt/atom/atom|/app/atom/atom|g' /app/share/applications/atom.desktop
	if [ -d /app/share/glib-2.0/schemas ];then \
		glib-compile-schemas /app/share/glib-2.0/schemas ; \
	fi
