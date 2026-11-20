# Voyage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Voyage ID | [optional] [readonly]
**status** | [**\Dinas\ShippingSdk\Model\VoyageStatus**](VoyageStatus.md) |  | [optional]
**number** | **string** | Voyage number | [optional] [readonly]
**vessel** | **string** | Vessel name | [optional] [readonly]
**cut_date** | **\DateTime** | Date when document acceptance stops | [optional] [readonly]
**car_delivery_start_date** | **\DateTime** | Car delivery start date | [optional] [readonly]
**car_delivery_end_date** | **\DateTime** | Car delivery end date | [optional] [readonly]
**loading_start_date** | **\DateTime** | Loading start date | [optional] [readonly]
**loading_end_date** | **\DateTime** | Loading end date | [optional] [readonly]
**etd** | **\DateTime** | Estimated time of departure | [optional] [readonly]
**eta** | **\DateTime** | Estimated time of arrival | [optional] [readonly]
**locked_at** | **\DateTime** | Date when voyage was locked for booking | [optional] [readonly]
**loaded_at** | **\DateTime** | Date when loading completed | [optional] [readonly]
**departed_at** | **\DateTime** | Date when vessel departed | [optional] [readonly]
**arrived_at** | **\DateTime** | Date when vessel arrived | [optional] [readonly]
**bl_ed** | **string** | Bill of lading and export declaration document URL | [optional] [readonly]
**vessel_info** | [**\Dinas\ShippingSdk\Model\VoyageVesselInfo**](VoyageVesselInfo.md) |  | [optional]
**route** | [**\Dinas\ShippingSdk\Model\VoyageRoute**](VoyageRoute.md) |  | [optional]
**bl_issue_date** | **\DateTime** | Bill of lading issue date. **Master company only**, with the voyages view permission | [optional] [readonly]
**shipping_line** | [**\Dinas\ShippingSdk\Model\VoyageCompany**](VoyageCompany.md) | Shipping line. **Master company only**, with the voyages view permission | [optional] [readonly]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
