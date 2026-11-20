# Dinas\ShippingSdk\VoyagesApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlEd()**](VoyagesApi.md#getBlEd) | **GET** /api/voyages/{voyage}/bl-ed | Download Bill of Lading and Export Declaration for a specific voyage
[**getVoyage()**](VoyagesApi.md#getVoyage) | **GET** /api/voyages/{voyage} | Retrieve detailed information about a specific voyage
[**getVoyageBls()**](VoyagesApi.md#getVoyageBls) | **GET** /api/voyages/{voyage}/bls | Bills of lading of a voyage, one per number with its cargo lines. **Master company only**, with the RU BLs docs permission
[**getVoyageRuBlFile()**](VoyagesApi.md#getVoyageRuBlFile) | **GET** /api/voyages/{voyage}/docs/bl | RU bills of lading xlsx, the same file as the RU BLs button. **Master company only**
[**getVoyageRuManifestFile()**](VoyagesApi.md#getVoyageRuManifestFile) | **GET** /api/voyages/{voyage}/docs/manifest | RU manifest xlsx, the same file as the RU manifest button. **Master company only**
[**getVoyages()**](VoyagesApi.md#getVoyages) | **GET** /api/voyages | Retrieve a paginated list of voyages with optional filtering and sorting


## `getBlEd()`

```php
getBlEd($voyage): \SplFileObject
```

Download Bill of Lading and Export Declaration for a specific voyage

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
    $result = $apiInstance->getBlEd($voyage);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoyagesApi->getBlEd: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voyage** | **int**| Voyage ID |

### Return type

**\SplFileObject**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/octet-stream`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

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

## `getVoyageBls()`

```php
getVoyageBls($voyage, $number, $chassis): \Dinas\ShippingSdk\Model\BillsOfLadingList
```

Bills of lading of a voyage, one per number with its cargo lines. **Master company only**, with the RU BLs docs permission

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
$number = 'number_example'; // string | Filter by exact BL number
$chassis = 'chassis_example'; // string | Only BLs with a line of the car with this exact chassis number

try {
    $result = $apiInstance->getVoyageBls($voyage, $number, $chassis);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoyagesApi->getVoyageBls: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voyage** | **int**| Voyage ID |
 **number** | **string**| Filter by exact BL number | [optional]
 **chassis** | **string**| Only BLs with a line of the car with this exact chassis number | [optional]

### Return type

[**\Dinas\ShippingSdk\Model\BillsOfLadingList**](../Model/BillsOfLadingList.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getVoyageRuBlFile()`

```php
getVoyageRuBlFile($voyage, $number): \SplFileObject
```

RU bills of lading xlsx, the same file as the RU BLs button. **Master company only**

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
$number = 'number_example'; // string | Only this BL number

try {
    $result = $apiInstance->getVoyageRuBlFile($voyage, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoyagesApi->getVoyageRuBlFile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voyage** | **int**| Voyage ID |
 **number** | **string**| Only this BL number | [optional]

### Return type

**\SplFileObject**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getVoyageRuManifestFile()`

```php
getVoyageRuManifestFile($voyage, $type): \SplFileObject
```

RU manifest xlsx, the same file as the RU manifest button. **Master company only**

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
$type = 'type_example'; // string | warehouse for the manifest for the warehouse

try {
    $result = $apiInstance->getVoyageRuManifestFile($voyage, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VoyagesApi->getVoyageRuManifestFile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voyage** | **int**| Voyage ID |
 **type** | **string**| warehouse for the manifest for the warehouse | [optional]

### Return type

**\SplFileObject**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getVoyages()`

```php
getVoyages($status, $search, $number, $from_country, $to_country, $sort, $per_page, $page): \Dinas\ShippingSdk\Model\VoyagesPaginated
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
$number = 'number_example'; // string | Filter by exact voyage number
$from_country = 'from_country_example'; // string | Filter by country of the port of loading (ISO 3166-1 alpha-2, e.g. JP)
$to_country = 'to_country_example'; // string | Filter by country of the port of discharge (ISO 3166-1 alpha-2, e.g. CN)
$sort = 'sort_example'; // string | Sort field. Prefix with - for descending. **default: -id**
$per_page = 56; // int | Number of items per page. **default: 100**
$page = 56; // int | Page number. **default: 1**

try {
    $result = $apiInstance->getVoyages($status, $search, $number, $from_country, $to_country, $sort, $per_page, $page);
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
 **number** | **string**| Filter by exact voyage number | [optional]
 **from_country** | **string**| Filter by country of the port of loading (ISO 3166-1 alpha-2, e.g. JP) | [optional]
 **to_country** | **string**| Filter by country of the port of discharge (ISO 3166-1 alpha-2, e.g. CN) | [optional]
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
