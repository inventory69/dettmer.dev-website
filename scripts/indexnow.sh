#!/bin/bash
API_KEY="41d7b4dfcf7dd72572f42cbd7718b4b9"
HOST="dettmer.dev"

# Alle URLs die indexiert werden sollen
URLS=(
  "https://dettmer.dev/"
  "https://dettmer.dev/works/"
  "https://dettmer.dev/projects/admin-panel/"
  "https://dettmer.dev/projects/discord-bot/"
  "https://dettmer.dev/projects/gallery/"
  "https://dettmer.dev/projects/simple-notes/"
)

# JSON Array erstellen
URL_JSON=$(printf '%s\n' "${URLS[@]}" | jq -R . | jq -s .)

# An IndexNow API senden
echo "Sending URLs to IndexNow..."
curl -X POST "https://api.indexnow.org/indexnow" \
  -H "Content-Type: application/json" \
  -d "{
    \"host\": \"${HOST}\",
    \"key\": \"${API_KEY}\",
    \"keyLocation\": \"https://${HOST}/${API_KEY}.txt\",
    \"urlList\": ${URL_JSON}
  }"

echo -e "\n\nIndexNow submission completed!"
