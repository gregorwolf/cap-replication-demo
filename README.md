# Demonstrate replication with CAP

## Setup

```
npm ci
```

## Start the application

Create a file `default-env.json` and add the following content and

```JSON
{
  "destinations": [
    {
      "name": "S4HANA_DEV",
      "url": "http://localhost:4005"
    },
    {
      "name": "S4HANA",
      "url": "http://localhost:4005"
    }
  ]
}
```

First start the mock service for the Business Partner API:

```bash
cds mock API_BUSINESS_PARTNER --port 4005
```

Then start the CAP application:

```bash
cds w
```

## Test the application

Use [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) to run the requests in the `test` folder. Start with bp-mock.http to check what data the mock service returns.

Now you can test further with the requests in replication.http.

When you have replicated the data from the source systems to the local database you can then run the upsert.http requests to merge the entries of the entity A_CustomerSalesAreaText from the source systems with the target system.

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
