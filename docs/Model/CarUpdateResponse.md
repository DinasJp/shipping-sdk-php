# # CarUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** | False if there are errors | [optional]
**created** | **string[]** | Chassis numbers created | [optional]
**updated** | **string[]** | Chassis numbers updated | [optional]
**booking_cancelled** | **string[]** | Chassis numbers whose booking got cancelled | [optional]
**booking_not_cancelled** | **string[]** | Chassis numbers whose booking was not cancelled | [optional]
**errors** | [**\Dinas\ShippingSdk\Model\CarError[]**](CarError.md) | List of errors encountered during sync | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
