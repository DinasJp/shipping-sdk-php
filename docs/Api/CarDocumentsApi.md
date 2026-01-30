# Dinas\ShippingSdk\CarDocumentsApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**storeCarDocumentFiles()**](CarDocumentsApi.md#storeCarDocumentFiles) | **POST** /api/cars/docs/file | Store car document files
[**storeCarDocumentUrls()**](CarDocumentsApi.md#storeCarDocumentUrls) | **POST** /api/cars/docs/url | Store car document URLs


## `storeCarDocumentFiles()`

```php
storeCarDocumentFiles($items): \Dinas\ShippingSdk\Model\ActionResponse
```

Store car document files

Upload documents with validation dates for multiple cars

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\CarDocumentsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$items = array(new \Dinas\ShippingSdk\Model\\Dinas\ShippingSdk\Model\DocumentFile()); // \Dinas\ShippingSdk\Model\DocumentFile[]

try {
    $result = $apiInstance->storeCarDocumentFiles($items);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarDocumentsApi->storeCarDocumentFiles: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **items** | [**\Dinas\ShippingSdk\Model\DocumentFile[]**](../Model/\Dinas\ShippingSdk\Model\DocumentFile.md)|  |

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

## `storeCarDocumentUrls()`

```php
storeCarDocumentUrls($document_url): \Dinas\ShippingSdk\Model\ActionResponse
```

Store car document URLs

Upload documents with validation dates for multiple cars

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\CarDocumentsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$document_url = array(new \Dinas\ShippingSdk\Model\DocumentUrl()); // \Dinas\ShippingSdk\Model\DocumentUrl[]

try {
    $result = $apiInstance->storeCarDocumentUrls($document_url);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarDocumentsApi->storeCarDocumentUrls: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_url** | [**\Dinas\ShippingSdk\Model\DocumentUrl[]**](../Model/DocumentUrl.md)|  |

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
