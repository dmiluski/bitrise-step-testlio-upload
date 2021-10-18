
#!/bin/bash
set -ex

curl --location --request POST "https://api.testlio.com/build/v3/collections/${testlio_collection_id}/builds" \
-F "file=@$BITRISE_IPA_PATH" \
-F name="${TESTLIO_APP_NAME}" \
--header 'Content-Type: multipart/form-data' \
--header "Authorization: Bearer ${TESTLIO_API_TOKEN}"
