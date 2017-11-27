#!/bin/bash

# EMAIL="rina" PASSWORD="rina" sh scripts/auth/sign-in.sh TOKEN=BAhJIiU5NDgyZTFmZGZmMTJhODgwYjI2YWFjMjgxMzVjOGI4NgY6BkVG--7f6abe4775c366a5f7eba7c40dcd06707e96bef3

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
