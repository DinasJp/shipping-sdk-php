# BillOfLading

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **string** | One bill of lading number with its cargo lines, as the RU BL prints it. | [optional]
**place_of_issue** | **string** | Port of loading and its country, e.g. TOYAMA, JAPAN | [optional]
**shipper** | [**\Dinas\ShippingSdk\Model\BillOfLadingShipper**](BillOfLadingShipper.md) |  | [optional]
**consignee** | [**\Dinas\ShippingSdk\Model\BillOfLadingConsignee**](BillOfLadingConsignee.md) |  | [optional]
**notify** | [**\Dinas\ShippingSdk\Model\BillOfLadingNotify**](BillOfLadingNotify.md) |  | [optional]
**price_terms** | **string** |  | [optional]
**freight_note** | **string** | Ready line for the freight box, null when nothing is printed there | [optional]
**lines** | [**\Dinas\ShippingSdk\Model\BillOfLadingLinesInner[]**](BillOfLadingLinesInner.md) |  | [optional]
**totals** | [**\Dinas\ShippingSdk\Model\BillOfLadingTotals**](BillOfLadingTotals.md) |  | [optional]
**updated_at** | **\DateTime** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
