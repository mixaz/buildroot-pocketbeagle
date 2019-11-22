#!/bin/sh
# 2018, Michael Welling <mwelling@ieee.org>

BOARD_DIR="$(dirname $0)"

# copy the uEnv.txt to the output/images directory
cp board/pocketbeagle/uEnv.txt $BINARIES_DIR/uEnv.txt

cp board/pocketbeagle/leptonpru-00A0.dtbo $BINARIES_DIR/
cp board/pocketbeagle/AM335X-PRU-RPROC-4-14-TI-00A0.dtbo $BINARIES_DIR/

GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

rm -rf "${GENIMAGE_TMP}"

genimage \
    --rootpath "${TARGET_DIR}" \
    --tmppath "${GENIMAGE_TMP}" \
    --inputpath "${BINARIES_DIR}" \
    --outputpath "${BINARIES_DIR}" \
    --config "${GENIMAGE_CFG}"

rm $BINARIES_DIR/sdcard.img.xz

xz -zkT 0 $BINARIES_DIR/sdcard.img
