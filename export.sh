#!/bin/sh

## TEST
# curl https://api.nylas.com/account -u $TOKEN:

## GET CONTACTS
((n = 28))  # Ideally programatically generated with curl https://api.nylas.com/contacts?view=count -u $TOKEN:

for i in $(seq 1 $n)
do
  (( CONTACTS_OFFSET = ($i-1)*1000 ))
  curl "https://api.nylas.com/contacts?limit=1000&offset=$CONTACTS_OFFSET" -u $TOKEN: > ./export/contacts$i.json
done

## GET CALENDAR
((n = 4))  # Ideally programatically generated with curl https://api.nylas.com/events?view=count -u $TOKEN:

for i in $(seq 1 $n)
do
  (( CAL_OFFSET = ($i-1)*1000 ))
  curl "https://api.nylas.com/events?limit=1000&offset=$CAL_OFFSET" -u $TOKEN: > ./export/calendar$i.json
done

## GET THREADS
((n = 62))   # Ideally programatically generated with curl https://api.nylas.com/threads?view=count -u $TOKEN:

for i in $(seq 1 $n)
do
  (( THREAD_OFFSET = ($i-1)*1000 ))
  curl "https://api.nylas.com/threads?view=expanded&limit=1000&offset=$THREAD_OFFSET" -u $TOKEN: > ./export/thread$i.json
done

## GET MESSAGES
#curl "https://api.nylas.com/messages?view=expanded&limit=1" -u $TOKEN: #> messages.json
