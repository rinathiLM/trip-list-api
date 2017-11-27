#TOKEN=BAhJIiU5NDgyZTFmZGZmMTJhODgwYjI2YWFjMjgxMzVjOGI4NgY6BkVG--7f6abe4775c366a5f7eba7c40dcd06707e96bef3 ID=2 sh scripts/trips/delete-trip.sh

curl --include --request DELETE "http://localhost:4741/trips/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
