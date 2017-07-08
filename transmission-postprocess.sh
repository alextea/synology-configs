# /usr/local/transmission/var/transmission-postprocess.sh

#!/bin/sh -xu

# Input Parameters
ARG_PATH="$TR_TORRENT_DIR/$TR_TORRENT_NAME"
ARG_NAME="$TR_TORRENT_NAME"
ARG_LABEL="N/A"

# Configuration
CONFIG_OUTPUT="/volume1/video"

/usr/local/bin/filebot -script 'fn:amc' \
  --output "$CONFIG_OUTPUT" \
  --action hardlink -non-strict \
  --conflict auto \
  --lang en \
  --def 'music=y' \
        'unsorted=y' \
        'deleteAfterExtract=y' \
        'minLengthMS=0' \
        'plex=127.0.0.1:pKjzGPjX4zhnKSDTpDmC' \
        'seriesFormat=TV Shows/{n}/Season {s}/{sxe} - {t}' \
        'musicFormat=/volume1/music/Flacs' \
        'excludeList=.excludes' \
        "ut_dir=$ARG_PATH" \
        "ut_kind=multi" \
        "ut_title=$ARG_NAME" \
        "ut_label=$ARG_LABEL" \
  --log all \
  --log-file '/volume1/homes/downloader/filebot.log' 2> /volume1/homes/downloader/filebot-error.log
