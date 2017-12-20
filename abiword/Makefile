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
	rm -f abiword*.deb libabiword*.deb
	for deb in *.deb; do \
		dpkg-deb --fsys-tarfile "$$deb" | \
		tar -xf- -C /app \
		--transform='s,^(\.?/)?(app|usr)/,,x'; \
	done
	tar -xvf app.tar.xz -C /
	install -Dm644 /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.62.0 /app/lib/x86_64-linux-gnu/libboost_filesystem.so.1.62.0
	install -Dm644 /usr/lib/x86_64-linux-gnu/libboost_system.so.1.62.0 /app/lib/x86_64-linux-gnu/libboost_system.so.1.62.0
	if [ -d /app/share/glib-2.0/schemas ];then \
		glib-compile-schemas /app/share/glib-2.0/schemas ; \
	fi
