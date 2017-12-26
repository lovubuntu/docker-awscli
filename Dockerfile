FROM node:8.9.2-alpine

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

WORKDIR /aws
ENTRYPOINT ["aws"]
