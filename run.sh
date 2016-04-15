sh init.sh

#curl https://api.nylas.com/threads?limit=1 -u $TOKEN: > threads.json
#curl https://api.nylas.com/threads?limit=1 -u $TOKEN: > messages.json
#curl https://api.nylas.com/calendars?limit=1 -u $TOKEN: > calendar.json
curl "https://api.nylas.com/contacts?limit=1000&offset=0" -u $TOKEN: > ./export/contacts0.json
#curl https://api.nylas.com/contacts?limit=1000&offset=1000 -u $TOKEN: > ./export/contacts1.json
#curl https://api.nylas.com/contacts?limit=1000&offset=2000 -u $TOKEN: > ./export/contacts2.json
