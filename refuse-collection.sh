#!/bin/bash
recycling_pattern="([0-9]{1,2} [A-Z][a-z]{2})"
url="https://www.cornwall.gov.uk/umbraco/Surface/Waste/MyCollectionDays?uprn={$1}&subscribe=False"

response=$(curl --silent $url)

if [[ $response =~ $recycling_pattern ]]
then
    recycling_date="${BASH_REMATCH[1]}"
fi

echo "{\"recycling_date\": \"$recycling_date\"}" | jq

