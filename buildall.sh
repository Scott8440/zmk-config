#!/usr/local/bin/zsh

ZMK_APP=$HOME/Documents/Code/zmk/app
ZMK_CONF=$HOME/Documents/Code/zmk-config

pushd $ZMK_APP
west build -d build/corne/left -b nice_nano_v2 -- -DSHIELD=corne_left -DZMK_CONFIG="$ZMK_CONF/config/corne"
west build -d build/corne/right -b nice_nano_v2 -- -DSHIELD=corne_right -DZMK_CONFIG="$ZMK_CONF/config/corne"

west build -d build/microdox/nn/left -b nice_nano -- -DSHIELD=microdox_left -DZMK_CONFIG="$ZMK_CONF/config/microdox"
west build -d build/microdox/nn/right -b nice_nano -- -DSHIELD=microdox_right -DZMK_CONFIG="$ZMK_CONF/config/microdox"

west build -d build/microdox/nnv2/left -b nice_nano_v2 -- -DSHIELD=microdox_left -DZMK_CONFIG="$ZMK_CONF/config/microdox"
west build -d build/microdox/nnv2/right -b nice_nano_v2 -- -DSHIELD=microdox_right -DZMK_CONFIG="$ZMK_CONF/config/microdox"

cp /Users/xjtian/Documents/Code/zmk/app/build/corne/left/zephyr/zmk.uf2 ~/Dropbox/keeb/Keyboard\ Firmware/crkbd/nice\ nano\ v2/left.uf2
cp /Users/xjtian/Documents/Code/zmk/app/build/corne/right/zephyr/zmk.uf2 ~/Dropbox/keeb/Keyboard\ Firmware/crkbd/nice\ nano\ v2/right.uf2

cp /Users/xjtian/Documents/Code/zmk/app/build/microdox/nn/left/zephyr/zmk.uf2 ~/Dropbox/keeb/Keyboard\ Firmware/microdox/nice\ nano/left.uf2
cp /Users/xjtian/Documents/Code/zmk/app/build/microdox/nn/right/zephyr/zmk.uf2 ~/Dropbox/keeb/Keyboard\ Firmware/microdox/nice\ nano/right.uf2

cp /Users/xjtian/Documents/Code/zmk/app/build/microdox/nnv2/left/zephyr/zmk.uf2 ~/Dropbox/keeb/Keyboard\ Firmware/microdox/nice\ nano\ v2/left.uf2
cp /Users/xjtian/Documents/Code/zmk/app/build/microdox/nnv2/right/zephyr/zmk.uf2 ~/Dropbox/keeb/Keyboard\ Firmware/microdox/nice\ nano\ v2/right.uf2

popd
