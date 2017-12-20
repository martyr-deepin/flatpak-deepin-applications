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
	mv /app/opt/ndm /app/ndm
	ln -sf /app/ndm/ndm /app/bin/ndm
	sed -i 's|Exec=.*|Exec=ndm|g' /app/share/applications/ndm.desktop
	if [ -d /app/share/glib-2.0/schemas ];then \
		glib-compile-schemas /app/share/glib-2.0/schemas ; \
	fi
