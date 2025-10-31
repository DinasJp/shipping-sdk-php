# Dinas\ShippingSdk\WebhooksApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWebhook()**](WebhooksApi.md#deleteWebhook) | **DELETE** /api/webhooks/{id} | Delete a webhook
[**getWebhook()**](WebhooksApi.md#getWebhook) | **GET** /api/webhooks/{id} | Retrieve a specific webhook by ID
[**getWebhooks()**](WebhooksApi.md#getWebhooks) | **GET** /api/webhooks | Retrieve a list of webhooks
[**storeWebhook()**](WebhooksApi.md#storeWebhook) | **POST** /api/webhooks | Create a new webhook
[**testWebhook()**](WebhooksApi.md#testWebhook) | **POST** /api/webhooks/{id}/test | Send a test payload to the webhook to verify it&#39;s working
[**toggleWebhook()**](WebhooksApi.md#toggleWebhook) | **PATCH** /api/webhooks/{id}/toggle | Toggle the active status of a webhook
[**updateWebhook()**](WebhooksApi.md#updateWebhook) | **PUT** /api/webhooks/{id} | Update an existing webhook


## `deleteWebhook()`

```php
deleteWebhook($id): \Dinas\ShippingSdk\Model\ActionResponse
```

Delete a webhook

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | Webhook ID

try {
    $result = $apiInstance->deleteWebhook($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->deleteWebhook: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Webhook ID |

### Return type

[**\Dinas\ShippingSdk\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWebhook()`

```php
getWebhook($id): \Dinas\ShippingSdk\Model\Webhook
```

Retrieve a specific webhook by ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | Webhook ID

try {
    $result = $apiInstance->getWebhook($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->getWebhook: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Webhook ID |

### Return type

[**\Dinas\ShippingSdk\Model\Webhook**](../Model/Webhook.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getWebhooks()`

```php
getWebhooks(): \Dinas\ShippingSdk\Model\Webhook[]
```

Retrieve a list of webhooks

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getWebhooks();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->getWebhooks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Dinas\ShippingSdk\Model\Webhook[]**](../Model/Webhook.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `storeWebhook()`

```php
storeWebhook($webhook): \Dinas\ShippingSdk\Model\Webhook
```

Create a new webhook

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$webhook = new \Dinas\ShippingSdk\Model\Webhook(); // \Dinas\ShippingSdk\Model\Webhook

try {
    $result = $apiInstance->storeWebhook($webhook);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->storeWebhook: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook** | [**\Dinas\ShippingSdk\Model\Webhook**](../Model/Webhook.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\Webhook**](../Model/Webhook.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `testWebhook()`

```php
testWebhook($id): \Dinas\ShippingSdk\Model\ActionResponse
```

Send a test payload to the webhook to verify it's working

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | Webhook ID

try {
    $result = $apiInstance->testWebhook($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->testWebhook: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Webhook ID |

### Return type

[**\Dinas\ShippingSdk\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `toggleWebhook()`

```php
toggleWebhook($id): \Dinas\ShippingSdk\Model\ActionResponse
```

Toggle the active status of a webhook

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | Webhook ID

try {
    $result = $apiInstance->toggleWebhook($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->toggleWebhook: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Webhook ID |

### Return type

[**\Dinas\ShippingSdk\Model\ActionResponse**](../Model/ActionResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateWebhook()`

```php
updateWebhook($id, $webhook): \Dinas\ShippingSdk\Model\Webhook
```

Update an existing webhook

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Token) authorization: bearerAuth
$config = Dinas\ShippingSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Dinas\ShippingSdk\Api\WebhooksApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | Webhook ID
$webhook = new \Dinas\ShippingSdk\Model\Webhook(); // \Dinas\ShippingSdk\Model\Webhook

try {
    $result = $apiInstance->updateWebhook($id, $webhook);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WebhooksApi->updateWebhook: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Webhook ID |
 **webhook** | [**\Dinas\ShippingSdk\Model\Webhook**](../Model/Webhook.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\Webhook**](../Model/Webhook.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
