
#!/bin/bash
set -ex

curl --location --request POST "https://api.testlio.com/build/v3/collections/${testlio_collection_id}/builds" \
-F "file=@$ipa_path" \
-F name="${testlio_app_name}" \
--header 'Content-Type: multipart/form-data' \
--header "Authorization: Bearer ${testlio_api_token}"
