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
	mv /app/opt/berry /app
	mkdir -p /app/bin
	ln -sf /app/berry/berry /app/bin/berry
	if [ -d /app/share/glib-2.0/schemas ];then \
		glib-compile-schemas /app/share/glib-2.0/schemas ; \
	fi
