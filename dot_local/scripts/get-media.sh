#!/bin/bash

if [ `playerctl status` != "Stopped" ]; then
    SONG_TITLE=""    
    PLAYER_NAME=$(playerctl metadata --format "{{ playerName }}")
    PLAYER_ICON=""
    if [ -z `playerctl metadata artist` ]; then
        SONG_TITLE="$(playerctl metadata title)"
    else
        SONG_TITLE="$(playerctl metadata title) - $(playerctl metadata artist)"
    fi

    if [ "$PLAYER_NAME" == "spotify" ]; then
	PLAYER_ICON=""
    elif [[ "$SONG_TITLE" == *"- Twitch"  ]]; then
        PLAYER_ICON=""
    fi

    if [ -z "$PLAYER_ICON" ]; then
        echo "$SONG_TITLE"
    else
        echo "$PLAYER_ICON  $SONG_TITLE"
    fi
fi
