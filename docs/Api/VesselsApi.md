# Dinas\ShippingSdk\VesselsApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVessel()**](VesselsApi.md#getVessel) | **GET** /api/vessels/{vessel} | Retrieve a vessel, deleted ones included
[**getVessels()**](VesselsApi.md#getVessels) | **GET** /api/vessels | Retrieve a paginated list of vessels


## `getVessel()`

```php
getVessel($vessel): \Dinas\ShippingSdk\Model\Vessel
```

Retrieve a vessel, deleted ones included

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\VesselsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$vessel = 56; // int | Vessel ID

try {
    $result = $apiInstance->getVessel($vessel);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VesselsApi->getVessel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vessel** | **int**| Vessel ID |

### Return type

[**\Dinas\ShippingSdk\Model\Vessel**](../Model/Vessel.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getVessels()`

```php
getVessels($code, $search, $with_trashed, $sort, $per_page, $page): \Dinas\ShippingSdk\Model\VesselsPaginated
```

Retrieve a paginated list of vessels

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\VesselsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$code = 'code_example'; // string | Filter by exact vessel code
$search = 'search_example'; // string | Search by name, code, flag, type, IMO or MMSI
$with_trashed = True; // bool | Include deleted vessels
$sort = 'sort_example'; // string | Sort field. Prefix with - for descending. **default: -id**
$per_page = 56; // int | Number of items per page. **default: 100**
$page = 56; // int | Page number. **default: 1**

try {
    $result = $apiInstance->getVessels($code, $search, $with_trashed, $sort, $per_page, $page);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VesselsApi->getVessels: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **string**| Filter by exact vessel code | [optional]
 **search** | **string**| Search by name, code, flag, type, IMO or MMSI | [optional]
 **with_trashed** | **bool**| Include deleted vessels | [optional]
 **sort** | **string**| Sort field. Prefix with - for descending. **default: -id** | [optional]
 **per_page** | **int**| Number of items per page. **default: 100** | [optional]
 **page** | **int**| Page number. **default: 1** | [optional]

### Return type

[**\Dinas\ShippingSdk\Model\VesselsPaginated**](../Model/VesselsPaginated.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
