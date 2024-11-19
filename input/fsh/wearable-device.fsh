Profile: WearableDevice
Parent: Device
Id: wearable-device
Title: "Wearable Device"
Description: "Profile for representing wearable devices that collect patient-generated health data"

* type from WearableDeviceTypeVS (required)
* manufacturer 1..1
* modelNumber 1..1
* serialNumber 1..1
* deviceName 1..*
* version 0..*


CodeSystem: WearableDeviceType
Id: wearable-device-type
Title: "Wearable Device Type"
* #smartwatch "Smartwatch"
* #fitnessBand "Fitness Band"
* #smartScale "Smart Scale"
* #smartRing "Smart Ring"

ValueSet: WearableDeviceTypeVS
Id: wearable-device-type-vs
Title: "Wearable Device Type Value Set"
* include codes from system WearableDeviceType
