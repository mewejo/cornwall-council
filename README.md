# Cornwall Council Tools
Scripts to extract data from the Cornwall Council website.

To find your UPRN, visit the [Cornwall Council website](https://www.cornwall.gov.uk/my-area/) and identify your property. In the URL you should see your property reference number (likely 12 digit integer).

## Requirements

* jq

## Refuse collections

Output is returned as JSON.

```bash
./refuse-collection.sh <property-reference-number>
```

```json
{
  "recycling_date": "13 Jan"
}
```

## Examples

I am using this with Waybar to show the recyling date in my system tray. For example:

```json
"custom/recycling": {
  "exec": "~/cornwall-council/tools/refuse-collection.sh 000000000000 | jq -r '.recycling_date' | awk '{print \"♻ \" $1 \" \" $2}'",
  "interval": 86400
},
```
