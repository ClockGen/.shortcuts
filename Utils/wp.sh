#!/data/data/com.termux/files/usr/bin/bash
# A little script to change wallpapers over time
if [[ $# != 2 ]]; then
    echo "Usage: $0 \"path to wallpaper folder\" \"Time in minutes\""
    exit 0
fi
wps="$(ls -R $1)"
while true; do
    for f in $wps; do
        termux-wallpaper -f "${1}/${f}"
        sleep $(( $2 * 60 ))
    done
done