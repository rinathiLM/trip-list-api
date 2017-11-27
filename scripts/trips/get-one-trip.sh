#TOKEN=BAhJIiU5NDgyZTFmZGZmMTJhODgwYjI2YWFjMjgxMzVjOGI4NgY6BkVG--7f6abe4775c366a5f7eba7c40dcd06707e96bef3 ID=1 sh scripts/trips/get-one-trip.sh

curl --include --request GET "http://localhost:4741/trips/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
