# Sourcegraph Cody

- Get your free API key from [https://sourcegraph.com](https://sourcegraph.com/), here are some custom settings to consider using:
- `API KEY`: sgp_e164fda7683bb150da6d592d536fe213a9104303

```json
{
  "alerts.showMajorMinorUpdates": true,
  "basicCodeIntel.globalSearchesEnabled": true,
  "experimentalFeatures": {
    "codeInsightsCompute": true,
    "fuzzyFinderAll": true,
    "fuzzyFinderSymbols": true,
    "searchContextsQuery": true,
    "searchResultsAggregations": true,
    "fuzzyFinderActions": true,
    "showMultilineSearchConsole": true,
    "enableSidebarFilePrefetch": true,
  },
  "search.defaultCaseSensitive": false,
  "fileSidebarVisibleByDefault": true
}
```

## API Example usage
```sh
curl \
  -H 'Authorization: token ********************************************' \
  -d '{"query":"query { currentUser { username } }"}' \
  https://sourcegraph.com/.api/graphql
```