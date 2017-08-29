#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments/:id"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment":{
      "body": "'"${TEXT}"'"
    }
  }'

echo
