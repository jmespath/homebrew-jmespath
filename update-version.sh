#!/bin/bash

set -e

if [ -z "$1" ]; then
	echo "usage: ./update-version.sh <version-number>" 1>&2
	exit 1
fi

VERSION="$1"
LOCAL_FILE="${VERSION}.tar.gz"
URL="https://github.com/jmespath/jp/archive/${LOCAL_FILE}"
pushd /tmp
wget "$URL"
checksum=$(shasum -a 256 "$LOCAL_FILE" | cut -d' ' -f 1)
rm "$LOCAL_FILE"
popd
sed "s_  url.*_  url \"$URL\"_" < Formula/jp.rb > /tmp/jp.rb.1
sed "s_  sha256.*_  sha256 \"$checksum\"_" < /tmp/jp.rb.1 > Formula/jp.rb
rm /tmp/jp.rb.1
