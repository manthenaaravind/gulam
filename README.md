# gulam

curl -X POST https://login.microsoftonline.com/<tenant-id>/oauth2/v2.0/token \
 -H "Content-Type: application/x-www-form-urlencoded" \
 -d "grant_type=client_credentials&client_id=<client-id>&client_secret=<client-secret>&scope=https%3A%2F%2Fgraph.microsoft.com%2F.default"

