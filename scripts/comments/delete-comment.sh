#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="article/${ID}/comment/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \


echo
