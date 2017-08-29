#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="/article/${ID}/comments/${ID}"
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
