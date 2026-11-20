# Vessel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] [readonly]
**name** | **string** |  | [optional] [readonly]
**code** | **string** | Voyage number prefix, e.g. KRV | [optional] [readonly]
**flag** | **string** | ISO 3166-1 alpha-2 | [optional] [readonly]
**flag_name** | **string** | Country name as printed in the bill of lading | [optional] [readonly]
**type** | **string** |  | [optional] [readonly]
**imo** | **string** |  | [optional] [readonly]
**mmsi** | **string** |  | [optional] [readonly]
**capacity** | **int** |  | [optional] [readonly]
**operator** | [**\Dinas\ShippingSdk\Model\VesselOperator**](VesselOperator.md) |  | [optional]
**captain** | [**\Dinas\ShippingSdk\Model\VesselCaptain**](VesselCaptain.md) |  | [optional]
**stamp** | [**\Dinas\ShippingSdk\Model\ApiImage**](ApiImage.md) | Vessel stamp | [optional] [readonly]
**signature** | [**\Dinas\ShippingSdk\Model\ApiImage**](ApiImage.md) | Captain signature | [optional] [readonly]
**updated_at** | **\DateTime** |  | [optional] [readonly]
**deleted_at** | **\DateTime** |  | [optional] [readonly]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
