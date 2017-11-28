#TOKEN=BAhJIiU0MGI3MmQ1MzJhMTkwN2VhMTExOWRmYTgwYzNhNTFiMAY6BkVG--566e9510cfe6eede5875cddc57ab17ee061e6b93 ID=3 sh scripts/trips/get-one-trip.sh

curl --include --request GET "http://localhost:4741/trips/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
