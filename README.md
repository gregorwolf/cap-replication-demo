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

## In hybrid mode with a real S/4HANA System

Create a file `default-env.json` and add the following content and

```JSON
{
  "destinations": [
    {
      "name": "S4HANA",
      "url": "",
      "username": "",
      "password": ""
    }
  ]
}
```
