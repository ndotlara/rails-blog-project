#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="/articles/${ARTICLE_ID}/comments/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
      "article_id: "'"${ARTICLE_ID}"'",
      "comment_id": "'"${ID}"'"
    }
  }'


echo
