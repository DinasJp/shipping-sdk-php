# Dinas\ShippingSdk\VoyagesApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVoyage()**](VoyagesApi.md#getVoyage) | **GET** /api/voyages/{voyage} | Retrieve detailed information about a specific voyage
[**getVoyages()**](VoyagesApi.md#getVoyages) | **GET** /api/voyages | Retrieve a paginated list of voyages with optional filtering and sorting


## `getVoyage()`

```php
getVoyage($voyage): \Dinas\ShippingSdk\Model\Voyage
```

Retrieve detailed information about a specific voyage

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\VoyagesApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$voyage = 56; // int | Voyage ID

try {
    $result = $apiInstance->getVoyage($voyage);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoyagesApi->getVoyage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voyage** | **int**| Voyage ID |

### Return type

[**\Dinas\ShippingSdk\Model\Voyage**](../Model/Voyage.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getVoyages()`

```php
getVoyages($status, $search, $sort, $per_page, $page): \Dinas\ShippingSdk\Model\VoyagesPaginated
```

Retrieve a paginated list of voyages with optional filtering and sorting

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\VoyagesApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$status = 'status_example'; // string | Filter by voyage status
$search = 'search_example'; // string | Search by voyage number
$sort = 'sort_example'; // string | Sort field. Prefix with - for descending. **default: -id**
$per_page = 56; // int | Number of items per page. **default: 100**
$page = 56; // int | Page number. **default: 1**

try {
    $result = $apiInstance->getVoyages($status, $search, $sort, $per_page, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoyagesApi->getVoyages: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **string**| Filter by voyage status | [optional]
 **search** | **string**| Search by voyage number | [optional]
 **sort** | **string**| Sort field. Prefix with - for descending. **default: -id** | [optional]
 **per_page** | **int**| Number of items per page. **default: 100** | [optional]
 **page** | **int**| Page number. **default: 1** | [optional]

### Return type

[**\Dinas\ShippingSdk\Model\VoyagesPaginated**](../Model/VoyagesPaginated.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
