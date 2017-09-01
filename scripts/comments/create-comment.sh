#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="article/${ID}/comment"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
      "user_id": "'"${USER_ID}"'",
      "article_id: "'"${ID}"'",
      "body": "'"${COMMENT}"'"
    }
  }'

echo
