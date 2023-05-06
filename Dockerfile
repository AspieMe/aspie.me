FROM klakegg/hugo:ubuntu

RUN set -xe \
    && apt-get update \
    && apt-get install git -y \
    && git config --global --add safe.directory /source

WORKDIR /source
