#!/bin/bash

# EMAIL="rina@test.com" PASSWORD="rina" sh scripts/auth/sign-in.sh TOKEN=BAhJIiVjYTMyNDE1ZWIxYzUwNGVkZDE2ZGE4NjM4NTYyMTNkZgY6BkVG--50fea74570ead6bb2fa53d51e60c71d9b2bc1b39

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
