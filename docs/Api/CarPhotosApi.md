# Dinas\ShippingSdk\CarPhotosApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCarPhotos()**](CarPhotosApi.md#getCarPhotos) | **GET** /api/cars/photos | Get car photos
[**storeCarPhotoFiles()**](CarPhotosApi.md#storeCarPhotoFiles) | **POST** /api/cars/photos/file | Store car photos from files
[**storeCarPhotoUrls()**](CarPhotosApi.md#storeCarPhotoUrls) | **POST** /api/cars/photos/url | Store car photos from URLs


## `getCarPhotos()`

```php
getCarPhotos($status, $chassis, $search, $voyage, $photos, $on_yard, $sort, $per_page, $page): \Dinas\ShippingSdk\Model\AlbumsPaginated
```

Get car photos

Retrieve a paginated list of cars with their photo albums

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\CarPhotosApi(
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
    echo 'Exception when calling CarPhotosApi->getCarPhotos: ', $e->getMessage(), PHP_EOL;
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

[**\Dinas\ShippingSdk\Model\AlbumsPaginated**](../Model/AlbumsPaginated.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `storeCarPhotoFiles()`

```php
storeCarPhotoFiles($items): \Dinas\ShippingSdk\Model\ActionResponse
```

Store car photos from files

Upload photos to specific album for multiple cars

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\CarPhotosApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$items = array(new \Dinas\ShippingSdk\Model\\Dinas\ShippingSdk\Model\AlbumFiles()); // \Dinas\ShippingSdk\Model\AlbumFiles[] | Array of car photo items

try {
    $result = $apiInstance->storeCarPhotoFiles($items);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarPhotosApi->storeCarPhotoFiles: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **items** | [**\Dinas\ShippingSdk\Model\AlbumFiles[]**](../Model/\Dinas\ShippingSdk\Model\AlbumFiles.md)| Array of car photo items |

### Return type

[**\Dinas\ShippingSdk\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `storeCarPhotoUrls()`

```php
storeCarPhotoUrls($album_urls): \Dinas\ShippingSdk\Model\ActionResponse
```

Store car photos from URLs

Upload photos to specific album for multiple cars

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\CarPhotosApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$album_urls = array(new \Dinas\ShippingSdk\Model\AlbumUrls()); // \Dinas\ShippingSdk\Model\AlbumUrls[]

try {
    $result = $apiInstance->storeCarPhotoUrls($album_urls);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarPhotosApi->storeCarPhotoUrls: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **album_urls** | [**\Dinas\ShippingSdk\Model\AlbumUrls[]**](../Model/AlbumUrls.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
