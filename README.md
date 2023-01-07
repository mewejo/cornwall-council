# Cornwall Council Tools
Scripts to extract data from the Cornwall Council website

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


