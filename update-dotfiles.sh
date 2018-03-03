#!/bin/bash
#
# copies my current running config, into my repo's working directory, 
# for later upload to github
#

pushd .
cd "$(dirname "${BASH_SOURCE[0]}")"

host="$(uname -a | cut -d' ' -f 2 )"

cp ~/.config/i3/i3status.conf ./$host-i3status.conf
cp ~/.config/i3/config ./$host-i3config
cp ~/.config/i3/compton.conf ./$host-compton.conf

popd
