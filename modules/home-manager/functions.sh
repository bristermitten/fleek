#!/bin/bash
config() {
  # navigate to the config file for a specific app
  cd "$XDG_CONFIG_HOME/$1" || echo "$1 is not a valid config directory."
}

screenshot () {

    LOCALFILE="/tmp/tmpScreenshot.png"
    screencapture -i $LOCALFILE
    HOST='https://img.bristermitten.me'
    PASS=$(security find-generic-password -w -s 'ass' -a 'admin')

    curl -X POST -F "file=@$LOCALFILE" -H "Authorization:$PASS" $HOST | jq -r '.resource' | pbcopy
}
