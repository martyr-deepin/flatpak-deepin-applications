all:
	if ! [ -d /var/lib/dpkg ]; then \
		cp -a /usr/var / || true ; \
	fi

# This assumes we don't need to run maintainer scripts.
install:
	rm -f emacs*.deb 
	if [ -f app.tar.xz ];then \
		tar -xvf app.tar.xz -C / ; \
	fi
	for deb in *.deb; do \
		dpkg-deb --fsys-tarfile "$$deb" | \
		tar -xf- -C /app \
		--transform='s,^(\.?/)?(app|usr)/,,x'; \
	done
	if [ -d /app/share/glib-2.0/schemas ];then \
		glib-compile-schemas /app/share/glib-2.0/schemas ; \
	fi
