#!/bin/bash

set -eux

SHA=$1

hg clone http://hg.openjdk.java.net/jdk8u/jdk8u
cd jdk8u
hg checkout $1
chmod u+x get_source.sh
./get_source.sh
chmod u+x configure
export DISABLE_HOTSPOT_OS_VERSION_CHECK=ok


