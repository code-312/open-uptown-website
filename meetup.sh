#!/bin/bash

rm _data/meetup/events.json
curl -o output.json "https://api.meetup.com/openuptown/events?key={YOUR_API_KEY}}"
cat output.json | jq '.[95:100]' >> _data/meetup/events.json
rm output.json