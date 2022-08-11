# Helper function pulled from isle-dc repo. Uses traefik.me certs to resolve local domain names without having to edit the etc/hosts file.
.PHONY: download-default-certs
.SILENT: download-default-certs
download-default-certs:
	mkdir -p certs
	if [ ! -f certs/cert.pem ]; then \
		curl http://traefik.me/fullchain.pem -o certs/cert.pem; \
	fi
	if [ ! -f certs/privkey.pem ]; then \
		curl http://traefik.me/privkey.pem -o certs/privkey.pem; \
	fi