#!/bin/bash
# TOKEN=BAhJIiU5NDgyZTFmZGZmMTJhODgwYjI2YWFjMjgxMzVjOGI4NgY6BkVG--7f6abe4775c366a5f7eba7c40dcd06707e96bef3 LOCATION="Boston" sh scripts/trips/create-trip.sh

curl --include --request POST "http://localhost:4741/trips" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
      "trip": {
        "location": "'"${LOCATION}"'",
        "done": "'"${DONE}"'",
        "image": "'"${IMAGE}"'"
      }
    }'

echo
