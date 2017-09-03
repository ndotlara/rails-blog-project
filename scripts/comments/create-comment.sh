#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="/articles/${ARTICLE_ID}/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
      "username": "'"${USERNAME}"'",
      "article_id: "'"${ARTICLE_ID}"'",
      "comment_body": "'"${COMMENT_BODY}"'"
    }
  }'

echo
