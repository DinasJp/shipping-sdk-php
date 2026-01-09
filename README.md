# Dinas Shipping Sdk

PHP client for Shipping API

For more information, please visit [https://github.com/dinasjp](https://github.com/dinasjp).

## Installation & Usage

### Requirements

PHP 8.1 and later.

### Install

```bash
composer require dinas/shipping-sdk-php
```

Your project is free to choose the http client of your choice
Please require packages that will provide http client functionality:  
https://packagist.org/providers/psr/http-client-implementation  
https://packagist.org/providers/php-http/async-client-implementation  
https://packagist.org/providers/psr/http-factory-implementation

As an example:

```
composer require guzzlehttp/guzzle php-http/guzzle7-adapter http-interop/http-factory-guzzle
```

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/ShippingSdk/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\CarsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$status = 'status_example'; // string | Filter by car status
$chassis = 'chassis_example'; // string | Filter by chassis number (multiple values separated by spaces)
$search = 'search_example'; // string | Search by partial chassis, make, model
$voyage = 'voyage_example'; // string | Filter by voyage
$photos = True; // bool | Filter by photos presence
$on_yard = True; // bool | Filter by yard presence
$sort = 'sort_example'; // string | Sort field. Prefix with - for descending. **default: -id**
$per_page = 56; // int | Number of items per page. **default: 100**
$page = 56; // int | Page number. **default: 1**

try {
    $result = $apiInstance->getCarPhotos($status, $chassis, $search, $voyage, $photos, $on_yard, $sort, $per_page, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->getCarPhotos: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://shipping.dinas.jp*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CarsApi* | [**getCarPhotos**](docs/Api/CarsApi.md#getcarphotos) | **GET** /api/cars/photos | Get car photos
*CarsApi* | [**getCars**](docs/Api/CarsApi.md#getcars) | **GET** /api/cars | Get paginated list of cars
*CarsApi* | [**storeCarDocuments**](docs/Api/CarsApi.md#storecardocuments) | **POST** /api/cars/docs | Store car documents
*CarsApi* | [**storeCarPhotos**](docs/Api/CarsApi.md#storecarphotos) | **POST** /api/cars/photos | Store car photos
*CarsApi* | [**syncCars**](docs/Api/CarsApi.md#synccars) | **POST** /api/cars | Create or update cars
*VoyagesApi* | [**getVoyage**](docs/Api/VoyagesApi.md#getvoyage) | **GET** /api/voyages/{voyage} | Retrieve detailed information about a specific voyage
*VoyagesApi* | [**getVoyages**](docs/Api/VoyagesApi.md#getvoyages) | **GET** /api/voyages | Retrieve a paginated list of voyages with optional filtering and sorting
*WebhooksApi* | [**deleteWebhook**](docs/Api/WebhooksApi.md#deletewebhook) | **DELETE** /api/webhooks/{name} | Delete a webhook
*WebhooksApi* | [**getWebhook**](docs/Api/WebhooksApi.md#getwebhook) | **GET** /api/webhooks/{name} | Retrieve a specific webhook by name
*WebhooksApi* | [**getWebhooks**](docs/Api/WebhooksApi.md#getwebhooks) | **GET** /api/webhooks | Retrieve a list of webhooks
*WebhooksApi* | [**storeWebhook**](docs/Api/WebhooksApi.md#storewebhook) | **POST** /api/webhooks | Create a new webhook
*WebhooksApi* | [**testWebhook**](docs/Api/WebhooksApi.md#testwebhook) | **POST** /api/webhooks/{name}/test | Send a test payload to the webhook to verify it&#39;s working
*WebhooksApi* | [**toggleWebhook**](docs/Api/WebhooksApi.md#togglewebhook) | **PATCH** /api/webhooks/{name}/toggle | Toggle the active status of a webhook
*WebhooksApi* | [**updateWebhook**](docs/Api/WebhooksApi.md#updatewebhook) | **PUT** /api/webhooks/{name} | Update an existing webhook

## Models

- [ActionResponse](docs/Model/ActionResponse.md)
- [Album](docs/Model/Album.md)
- [AlbumData](docs/Model/AlbumData.md)
- [AlbumInfo](docs/Model/AlbumInfo.md)
- [AlbumsPaginated](docs/Model/AlbumsPaginated.md)
- [CarAlbums](docs/Model/CarAlbums.md)
- [CarBase](docs/Model/CarBase.md)
- [CarData](docs/Model/CarData.md)
- [CarDocuments](docs/Model/CarDocuments.md)
- [CarError](docs/Model/CarError.md)
- [CarModel](docs/Model/CarModel.md)
- [CarPrices](docs/Model/CarPrices.md)
- [CarSyncResponse](docs/Model/CarSyncResponse.md)
- [CarsPaginated](docs/Model/CarsPaginated.md)
- [Dealer](docs/Model/Dealer.md)
- [DocumentData](docs/Model/DocumentData.md)
- [DocumentInfo](docs/Model/DocumentInfo.md)
- [ExportMethod](docs/Model/ExportMethod.md)
- [ExportType](docs/Model/ExportType.md)
- [FuelType](docs/Model/FuelType.md)
- [InnerCargo](docs/Model/InnerCargo.md)
- [PaginationLinks](docs/Model/PaginationLinks.md)
- [PaginationMeta](docs/Model/PaginationMeta.md)
- [PriceTerms](docs/Model/PriceTerms.md)
- [ShipDateLimit](docs/Model/ShipDateLimit.md)
- [SimpleResource](docs/Model/SimpleResource.md)
- [StockStatus](docs/Model/StockStatus.md)
- [VehicleType](docs/Model/VehicleType.md)
- [Voyage](docs/Model/Voyage.md)
- [VoyageInfo](docs/Model/VoyageInfo.md)
- [VoyageStatus](docs/Model/VoyageStatus.md)
- [VoyagesPaginated](docs/Model/VoyagesPaginated.md)
- [Webhook](docs/Model/Webhook.md)
- [Yard](docs/Model/Yard.md)

## Authorization

### bearerAuth

- **Type**: Bearer authentication (Token)

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

info@dinas.jp

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Generator version: `7.17.0-SNAPSHOT`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
