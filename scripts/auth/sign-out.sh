#!/bin/bash
#TOKEN=BAhJIiVjYTMyNDE1ZWIxYzUwNGVkZDE2ZGE4NjM4NTYyMTNkZgY6BkVG--50fea74570ead6bb2fa53d51e60c71d9b2bc1b39 sh scripts/auth/sign-out.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
