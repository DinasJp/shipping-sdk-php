# # CarData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Car ID | [optional] [readonly]
**chassis** | **string** | Chassis number |
**make** | **string** | Car manufacturer **Required for creation** | [optional]
**model** | **string** | Car model **Required for creation** | [optional]
**year** | **int** | Manufacturing year | [optional]
**color** | **string** | Car color | [optional]
**export_type** | [**\Dinas\ShippingSdk\Model\ExportType**](ExportType.md) |  | [optional]
**export_method** | [**\Dinas\ShippingSdk\Model\ExportMethod**](ExportMethod.md) |  | [optional]
**vehicle_type** | [**\Dinas\ShippingSdk\Model\VehicleType**](VehicleType.md) |  | [optional]
**fuel** | [**\Dinas\ShippingSdk\Model\FuelType**](FuelType.md) |  | [optional]
**engine_model** | **string** | Engine model | [optional]
**engine_number** | **string** | Engine number | [optional]
**engine_size** | **float** | Engine size in cc | [optional]
**engine_power** | **float** | Engine power | [optional]
**seats** | **int** | Number of seats | [optional]
**cargo_capacity** | **int** | Cargo capacity | [optional]
**net_weight** | **float** | Net weight in kg | [optional]
**gross_weight** | **float** | Gross weight in kg | [optional]
**length** | **float** | Length in cm | [optional]
**width** | **float** | Width in cm | [optional]
**height** | **float** | Height in cm | [optional]
**price_terms** | [**\Dinas\ShippingSdk\Model\PriceTerms**](PriceTerms.md) |  | [optional]
**unit_price** | **float** | Unit price (as in invoice without freight) | [optional]
**purchase_date** | **\DateTime** | Purchase date **Required for creation** | [optional]
**damaged** | **bool** | Whether the car is damaged | [optional]
**ship_date_limit** | [**\Dinas\ShippingSdk\Model\ShipDateLimit**](ShipDateLimit.md) |  | [optional]
**note** | **string** | Any comments | [optional]
**dealer** | [**\Dinas\ShippingSdk\Model\Dealer**](Dealer.md) |  | [optional]
**pol** | **string** | Loading port code (e.g. TOY, OSA, KWS) | [optional]
**hold** | **bool** | \&quot;Do not ship\&quot; status: true &#x3D; hold, false &#x3D; ship. **Cannot be used together with &#39;ship_date_limit&#39; field.** | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
