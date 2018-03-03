#!/bin/bash
#
# deploys dotfiles to this host.
#
pushd .
cd "$(dirname "${BASH_SOURCE[0]}")"

host="$(uname -a | cut -d' ' -f 2 )"
# do we have dotfiles for this host? if not, then abort
have_dotfiles=$(ls | grep "^$host-")

if [[ ! -z $have_dotfiles ]]; then
    cp ./$host-i3status.conf ~/.config/i3/i3status.conf 
    cp ./$host-i3config ~/.config/i3/config
    cp ./$host-compton.conf ~/.config/i3/compton.conf 
else
    echo "no dotfiles available for the host $host"
fi

popd
