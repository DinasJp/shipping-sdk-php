# Dinas\ShippingSdk\CarsApi

All URIs are relative to https://shipping.dinas.jp.

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCars()**](CarsApi.md#getCars) | **GET** /api/cars | Get paginated list of cars
[**grantCars()**](CarsApi.md#grantCars) | **POST** /api/cars/grant | Clear withhold status
[**holdCars()**](CarsApi.md#holdCars) | **POST** /api/cars/hold | Hold cars from shipping
[**releaseCars()**](CarsApi.md#releaseCars) | **POST** /api/cars/release | Allow us to ship cars
[**setYardEta()**](CarsApi.md#setYardEta) | **POST** /api/cars/yard/eta | Set yard ETA for cars
[**syncCars()**](CarsApi.md#syncCars) | **POST** /api/cars | Create or update cars
[**withholdCars()**](CarsApi.md#withholdCars) | **POST** /api/cars/withhold | Withhold cars upon arrival


## `getCars()`

```php
getCars($status, $chassis, $search, $port_code, $voyage, $vehicle_state, $vehicle_type, $photos, $docs, $on_yard, $price_terms, $sort, $per_page, $page): \Dinas\ShippingSdk\Model\CarsPaginated
```

Get paginated list of cars

Retrieve a paginated list of cars with optional filtering and sorting

### Example

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
$port_code = 'port_code_example'; // string | Filter by port code
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
    $result = $apiInstance->getCars($status, $chassis, $search, $port_code, $voyage, $vehicle_state, $vehicle_type, $photos, $docs, $on_yard, $price_terms, $sort, $per_page, $page);
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
 **port_code** | **string**| Filter by port code | [optional]
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

[**\Dinas\ShippingSdk\Model\CarsPaginated**](../Model/CarsPaginated.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `grantCars()`

```php
grantCars($grant_cars_request): \Dinas\ShippingSdk\Model\CarUpdateResponse
```

Clear withhold status

Clear withhold status - allow release to consignee upon arrival

### Example

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
$grant_cars_request = new \Dinas\ShippingSdk\Model\GrantCarsRequest(); // \Dinas\ShippingSdk\Model\GrantCarsRequest

try {
    $result = $apiInstance->grantCars($grant_cars_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->grantCars: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_cars_request** | [**\Dinas\ShippingSdk\Model\GrantCarsRequest**](../Model/GrantCarsRequest.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\CarUpdateResponse**](../Model/CarUpdateResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `holdCars()`

```php
holdCars($hold_cars_request): \Dinas\ShippingSdk\Model\CarUpdateResponse
```

Hold cars from shipping

Put cars on hold - prevent shipping until released

### Example

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
$hold_cars_request = new \Dinas\ShippingSdk\Model\HoldCarsRequest(); // \Dinas\ShippingSdk\Model\HoldCarsRequest

try {
    $result = $apiInstance->holdCars($hold_cars_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->holdCars: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hold_cars_request** | [**\Dinas\ShippingSdk\Model\HoldCarsRequest**](../Model/HoldCarsRequest.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\CarUpdateResponse**](../Model/CarUpdateResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `releaseCars()`

```php
releaseCars($release_cars_request): \Dinas\ShippingSdk\Model\CarUpdateResponse
```

Allow us to ship cars

Release cars from hold - allow shipping

### Example

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
$release_cars_request = new \Dinas\ShippingSdk\Model\ReleaseCarsRequest(); // \Dinas\ShippingSdk\Model\ReleaseCarsRequest

try {
    $result = $apiInstance->releaseCars($release_cars_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->releaseCars: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **release_cars_request** | [**\Dinas\ShippingSdk\Model\ReleaseCarsRequest**](../Model/ReleaseCarsRequest.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\CarUpdateResponse**](../Model/CarUpdateResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `setYardEta()`

```php
setYardEta($set_yard_eta_request): \Dinas\ShippingSdk\Model\CarUpdateResponse
```

Set yard ETA for cars

Set estimated time of arrival (ETA) for cars at yard

### Example

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
$set_yard_eta_request = new \Dinas\ShippingSdk\Model\SetYardEtaRequest(); // \Dinas\ShippingSdk\Model\SetYardEtaRequest

try {
    $result = $apiInstance->setYardEta($set_yard_eta_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->setYardEta: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_yard_eta_request** | [**\Dinas\ShippingSdk\Model\SetYardEtaRequest**](../Model/SetYardEtaRequest.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\CarUpdateResponse**](../Model/CarUpdateResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `syncCars()`

```php
syncCars($car_data): \Dinas\ShippingSdk\Model\CarUpdateResponse
```

Create or update cars

Create or update multiple cars with their related data

### Example

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
$car_data = array(new \Dinas\ShippingSdk\Model\CarData()); // \Dinas\ShippingSdk\Model\CarData[]

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
 **car_data** | [**\Dinas\ShippingSdk\Model\CarData[]**](../Model/CarData.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\CarUpdateResponse**](../Model/CarUpdateResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `withholdCars()`

```php
withholdCars($withhold_cars_request): \Dinas\ShippingSdk\Model\CarUpdateResponse
```

Withhold cars upon arrival

Withhold cars upon arrival - prevent release to consignee

### Example

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
$withhold_cars_request = new \Dinas\ShippingSdk\Model\WithholdCarsRequest(); // \Dinas\ShippingSdk\Model\WithholdCarsRequest

try {
    $result = $apiInstance->withholdCars($withhold_cars_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CarsApi->withholdCars: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withhold_cars_request** | [**\Dinas\ShippingSdk\Model\WithholdCarsRequest**](../Model/WithholdCarsRequest.md)|  |

### Return type

[**\Dinas\ShippingSdk\Model\CarUpdateResponse**](../Model/CarUpdateResponse.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
