# Demonstrate replication with CAP

## Setup

```
cds deploy --to sqlite:sqlite.db --with-mocks
```

## Startup

```
cds run --with-mocks
```

## With Data from the api.sap.com Sandbox

Create a `.cdsrc-private.json` file with the following content:

```JSON
{
  "requires": {
    "[hybrid]": {
      "API_BUSINESS_PARTNER": {
        "credentials": {
          "headers": {
            "APIKey": "<Your-api.sap.com-API-Key>"
          }
        }
      }
    }
  }
}
```

then run:

```
cds watch --profile hybrid
```
