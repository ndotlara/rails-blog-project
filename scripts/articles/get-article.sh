#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://rails-blog-project.herokuapp.com/}"
URL_PATH="/articles/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \

echo
