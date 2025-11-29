#!/bin/bash
CURRENT_DIR="$(dirname "$0")/"

XDELTA3="${CURRENT_DIR}bin/xdelta3"
INPUT="$1"
SHA1SUM="4cbadd3c4e0729dec46af64ad018050eada4f47a"
PATCH="${CURRENT_DIR}conker-deutsch_0.2.0.us.xdelta"
OUTPUT="${CURRENT_DIR}conker-deutsch_0.2.0.us.z64"

if [ -z "$INPUT" ]; then
    zenity --error --text="Original ROM als Parameter angeben oder per Drag&amp;Drop auf dieses Skript ziehen."
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    zenity --error --text="ROM nicht gefunden!"
    exit 1
fi

sha1sum "$INPUT" | grep -q "$SHA1SUM"
if [ "$?" -ne 0 ]; then
    zenity --error --text="Die angegebene Datei ist nicht die richtige ROM!"
    exit 1
fi

if [ ! -f "$PATCH" ]; then
    zenity --error --text="Patch Datei nicht gefunden!"
    exit 1
fi

"$XDELTA3" -d -f -s "$INPUT" "$PATCH" "$OUTPUT"
if [ "$?" -ne 0 ]; then
    zenity --error --text="Patch-Vorgang fehlgeschlagen!"
    exit 1
fi

zenity --info --text="Patch-Vorgang abgeschlossen."
exit 0
