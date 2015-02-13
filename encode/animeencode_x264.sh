#!/bin/sh
HandBrakeCLI -i $1 -o $1.mp4 -e x264 --x264-preset=slower --x264-tune=animation --h264-profile=high -q 20 --rate 23.976 --cfr -a 1 -E copy -6 auto -w 1280 -l 720 --crop 0:0:0:0 --decomb --detelecine --deinterlace
