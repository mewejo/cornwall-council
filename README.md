# Cornwall Council Tools
Scripts to extract data from the Cornwall Council website.

To find your UPRN, visit the [Cornwall Council website](https://www.cornwall.gov.uk/my-area/) and identify your property. In the URL you should see your property reference number (likely 12 digit integer).

## Requirements

* php

## Refuse collections

Output is returned as JSON.

```bash
./tools/refuse-collection <property-reference-number>
```

```json
{"recycling":{"next_collection":{"date_raw":"10 Feb"}}}
```

## Examples

I am using this with Waybar to show the recyling date in my system tray. For example:

```json
"custom/recycling": {
  "exec": "~/cornwall-council/tools/refuse-collection 000000000000 | jq -r '.recycling.next_collection.date_raw' | awk '{print \"♻ \" $1 \" \" $2}'",
  "interval": 86400
},
```
