#/bin/bash
#clear
BASEDIR=$(cd "$( dirname "$0" )" && pwd)
BASEIMAGE_TARGET_LIST=()
#buildDate=$(date -Is)
#echo $BASEDIR $buildDate
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
done
