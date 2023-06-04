FROM debian
MAINTAINER LanCache.Net Team <team@lancache.net>

ENV UPSTREAM_DNS 8.8.8.8 8.8.4.4

RUN	apt update \
	&& apt install sniproxy

COPY overlay/ /

RUN	chmod 755 /scripts/*

EXPOSE 443

ENTRYPOINT ["/scripts/bootstrap.sh"]
