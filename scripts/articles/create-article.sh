#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="/articles"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "article":{
      "username": "'"${USERNAME}"'"
      "title": "'"${TITLE}"'",
      "article_text": "'"${ARTICLE_TEXT}"'"
    }
  }'

echo
