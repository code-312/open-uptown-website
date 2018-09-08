#!/bin/bash

rm _data/meetup/events.json
curl -o output.json "https://api.meetup.com/openuptown/events?key=1441743b537930224c2897377e58"
cat output.json | jq '.[95:100]' >> _data/meetup/events.json
rm output.json