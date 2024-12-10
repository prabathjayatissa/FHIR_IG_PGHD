Profile: WearableObservation
Parent: Observation
Id: wearable-observation
Title: "Wearable Device Observation"
Description: "Profile for observations collected from wearable devices"

* status MS
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vital-signs 1..1
* category[vital-signs] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs


* code 1..1 MS
* device only Reference(WearableDevice)
* device 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS
* method from MeasurementMethodVS (required)

CodeSystem: MeasurementMethod
Id: measurement-method
Title: "Measurement Method"
* #continuous "Continuous Monitoring"
* #spot "Spot Measurement"
* #derived "Derived Calculation"

ValueSet: MeasurementMethodVS
Id: measurement-method-vs
Title: "Measurement Method Value Set"
* include codes from system MeasurementMethod
