#!/bin/sh

# Test Account
# curl https://api.nylas.com/account -u $TOKEN:

#curl https://api.nylas.com/threads?limit=1 -u $TOKEN: > threads.json
#curl https://api.nylas.com/threads?limit=1 -u $TOKEN: > messages.json
#curl https://api.nylas.com/calendars?limit=1 -u $TOKEN: > calendar.json

# GET CONTACTS
curl https://api.nylas.com/contacts?view=count -u $TOKEN:
#curl "https://api.nylas.com/contacts?limit=1000&offset=0" -u $TOKEN: > ./export/contacts0.json
#curl "https://api.nylas.com/contacts?limit=1000&offset=1000" -u $TOKEN: > ./export/contacts1.json
#curl "https://api.nylas.com/contacts?limit=1000&offset=2000" -u $TOKEN: > ./export/contacts2.json
#curl "https://api.nylas.com/contacts?limit=1000&offset=3000" -u $TOKEN: > ./export/contacts3.json
#curl "https://api.nylas.com/contacts?limit=1000&offset=3000" -u $TOKEN: > ./export/contacts3.json


for i in {1..24}
do
  (( OFFSET = ($i-1)*1000 ))
  #echo $OFFSET
  curl "https://api.nylas.com/contacts?limit=1000&offset=$OFFSET" -u $TOKEN: > ./export/contacts$i.json
  # echo "Welcome $i times"
done
