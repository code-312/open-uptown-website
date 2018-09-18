#!/bin/bash

while getopts ":k:" option; do
    case $option in
        k) MEETUP_API_KEY=${OPTARG}
            ;;
        \?) echo "Invalid option: -$OPTARG. Use -k option with MeetUp API key."
            exit 1
            ;;
    esac
done

echo "Downloading data from MeetUp API..."

rm ../_data/meetup/events.json
curl -o ../_data/meetup/events.json "https://api.meetup.com/openuptown/events?key=$MEETUP_API_KEY&desc=true&page=10"

echo "Done. Saved in _data/ folder."
