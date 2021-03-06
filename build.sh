#!/bin/bash
BASEDIR=$(cd "$( dirname "$0" )" && pwd)
buildDate=$(date -Is)
echo $BASEDIR $buildDate
[[ -z "$@" ]] \
&& BASEIMAGE_TARGET_LIST=('alpine' 'rpi' 'buildpack-deps') \
|| BASEIMAGE_TARGET_LIST=();

while [[ $# -gt 0 ]]; do
    key="$1"
    case "$key" in
        alpine)
            BASEIMAGE_TARGET_LIST+=('alpine');
        ;;
        rpi)
            BASEIMAGE_TARGET_LIST+=('rpi');
        ;;
        buildpack-deps)
            BASEIMAGE_TARGET_LIST+=('buildpack-deps');
        ;;
        all)
            BASEIMAGE_TARGET_LIST+=('alpine');
            BASEIMAGE_TARGET_LIST+=('rpi');
            BASEIMAGE_TARGET_LIST+=('buildpack-deps');
        ;;
        *)
        echo "Unknown option '$key'"
        exit 2;
        ;;
    esac
    shift
done
[ ! -r TIMEZONE -o ! -r BASE_XTRA ] && ./configure
for TARGET in "${BASEIMAGE_TARGET_LIST[@]}"
do
    cd "$BASEDIR/whw3/$TARGET"
    ./build.sh
    touch "$BASEDIR/$TARGET"
done
