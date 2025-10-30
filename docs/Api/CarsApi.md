# Dinas\ShippingClient\CarsApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCarPhotos()**](CarsApi.md#getCarPhotos) | **GET** /api/cars/photos | Get car photos
[**getCars()**](CarsApi.md#getCars) | **GET** /api/cars | Get paginated list of cars
[**storeCarDocuments()**](CarsApi.md#storeCarDocuments) | **POST** /api/cars/docs | Store car documents
[**storeCarPhotos()**](CarsApi.md#storeCarPhotos) | **POST** /api/cars/photos | Store car photos
[**syncCars()**](CarsApi.md#syncCars) | **POST** /api/cars | Create or update cars


## `getCarPhotos()`

```php
getCarPhotos($status, $chassis, $search, $voyage, $photos, $on_yard, $sort, $per_page, $page): \Dinas\ShippingClient\Model\AlbumsPaginated
```

Get car photos

Retrieve a paginated list of cars with their photo albums

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingClient\Api\CarsApi(
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string**| Filter by car status | [optional]
 **chassis** | **string**| Filter by chassis number (multiple values separated by spaces) | [optional]
 **search** | **string**| Search by partial chassis, make, model | [optional]
 **voyage** | **string**| Filter by voyage | [optional]
 **photos** | **bool**| Filter by photos presence | [optional]
 **on_yard** | **bool**| Filter by yard presence | [optional]
 **sort** | **string**| Sort field. Prefix with - for descending. **default: -id** | [optional]
 **per_page** | **int**| Number of items per page. **default: 100** | [optional]
 **page** | **int**| Page number. **default: 1** | [optional]

### Return type

[**\Dinas\ShippingClient\Model\AlbumsPaginated**](../Model/AlbumsPaginated.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getCars()`

```php
getCars($status, $chassis, $search, $voyage, $vehicle_state, $vehicle_type, $photos, $docs, $on_yard, $price_terms, $sort, $per_page, $page): \Dinas\ShippingClient\Model\CarsPaginated
```

Get paginated list of cars

Retrieve a paginated list of cars with optional filtering and sorting

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingClient\Api\CarsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$status = 'status_example'; // string | Filter by car status
$chassis = 'chassis_example'; // string | Filter by chassis number (multiple values separated by spaces)
$search = 'search_example'; // string | Search by partial chassis, make, model
$voyage = 'voyage_example'; // string | Filter by voyage
$vehicle_state = 'vehicle_state_example'; // string | Filter by vehicle state
$vehicle_type = 'vehicle_type_example'; // string | Filter by vehicle type
$photos = True; // bool | Filter by photos presence
$docs = True; // bool | Filter by documents presence
$on_yard = True; // bool | Filter by yard presence
$price_terms = 'price_terms_example'; // string | Filter by price terms
$sort = 'sort_example'; // string | Sort field. Prefix with - for descending. **default: -id**
$per_page = 56; // int | Number of items per page. **default: 100**
$page = 56; // int | Page number. **default: 1**

try {
    $result = $apiInstance->getCars($status, $chassis, $search, $voyage, $vehicle_state, $vehicle_type, $photos, $docs, $on_yard, $price_terms, $sort, $per_page, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->getCars: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string**| Filter by car status | [optional]
 **chassis** | **string**| Filter by chassis number (multiple values separated by spaces) | [optional]
 **search** | **string**| Search by partial chassis, make, model | [optional]
 **voyage** | **string**| Filter by voyage | [optional]
 **vehicle_state** | **string**| Filter by vehicle state | [optional]
 **vehicle_type** | **string**| Filter by vehicle type | [optional]
 **photos** | **bool**| Filter by photos presence | [optional]
 **docs** | **bool**| Filter by documents presence | [optional]
 **on_yard** | **bool**| Filter by yard presence | [optional]
 **price_terms** | **string**| Filter by price terms | [optional]
 **sort** | **string**| Sort field. Prefix with - for descending. **default: -id** | [optional]
 **per_page** | **int**| Number of items per page. **default: 100** | [optional]
 **page** | **int**| Page number. **default: 1** | [optional]

### Return type

[**\Dinas\ShippingClient\Model\CarsPaginated**](../Model/CarsPaginated.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `storeCarDocuments()`

```php
storeCarDocuments($items): \Dinas\ShippingClient\Model\ActionResponse
```

Store car documents

Upload documents for multiple cars with validation dates

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingClient\Api\CarsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$items = array(new \Dinas\ShippingClient\Model\\Dinas\ShippingClient\Model\DocumentData()); // \Dinas\ShippingClient\Model\DocumentData[]

try {
    $result = $apiInstance->storeCarDocuments($items);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->storeCarDocuments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **items** | [**\Dinas\ShippingClient\Model\DocumentData[]**](../Model/\Dinas\ShippingClient\Model\DocumentData.md)|  |

### Return type

[**\Dinas\ShippingClient\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `storeCarPhotos()`

```php
storeCarPhotos($items): \Dinas\ShippingClient\Model\ActionResponse
```

Store car photos

Upload photos for multiple cars to specific albums

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingClient\Api\CarsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$items = array(new \Dinas\ShippingClient\Model\\Dinas\ShippingClient\Model\AlbumData()); // \Dinas\ShippingClient\Model\AlbumData[]

try {
    $result = $apiInstance->storeCarPhotos($items);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->storeCarPhotos: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **items** | [**\Dinas\ShippingClient\Model\AlbumData[]**](../Model/\Dinas\ShippingClient\Model\AlbumData.md)|  |

### Return type

[**\Dinas\ShippingClient\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `syncCars()`

```php
syncCars($car_data): \Dinas\ShippingClient\Model\CarSyncResponse
```

Create or update cars

Create or update multiple cars with their related data

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingClient\Api\CarsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$car_data = array(new \Dinas\ShippingClient\Model\CarData()); // \Dinas\ShippingClient\Model\CarData[]

try {
    $result = $apiInstance->syncCars($car_data);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->syncCars: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **car_data** | [**\Dinas\ShippingClient\Model\CarData[]**](../Model/CarData.md)|  |

### Return type

[**\Dinas\ShippingClient\Model\CarSyncResponse**](../Model/CarSyncResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
