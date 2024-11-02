Profile: WearableVitalSigns
Parent: WearableObservation
Id: wearable-vital-signs
Title: "Wearable Vital Signs Observation"
Description: "Profile for vital signs observations from wearable devices"

* code from VitalSignsVS (required)

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    heartRate 0..1 and
    respiratoryRate 0..1 and
    bodyTemperature 0..1 and
    oxygenSaturation 0..1

* component[heartRate].code = $loinc#8867-4 "Heart rate"
* component[heartRate].value[x] only Quantity
* component[heartRate].valueQuantity.system = $ucum
* component[heartRate].valueQuantity.code = #{beats}/min

* component[respiratoryRate].code = $loinc#9279-1 "Respiratory rate"
* component[respiratoryRate].value[x] only Quantity
* component[respiratoryRate].valueQuantity.system = $ucum
* component[respiratoryRate].valueQuantity.code = #{breaths}/min

* component[bodyTemperature].code = $loinc#8310-5 "Body temperature"
* component[bodyTemperature].value[x] only Quantity
* component[bodyTemperature].valueQuantity.system = $ucum
* component[bodyTemperature].valueQuantity.code = #Cel

* component[oxygenSaturation].code = $loinc#59408-5 "Oxygen saturation"
* component[oxygenSaturation].value[x] only Quantity
* component[oxygenSaturation].valueQuantity.system = $ucum
* component[oxygenSaturation].valueQuantity.code = #%

ValueSet: VitalSignsVS
Id: vital-signs-vs
Title: "Vital Signs Value Set"
* $loinc#8867-4 "Heart rate"
* $loinc#9279-1 "Respiratory rate"
* $loinc#8310-5 "Body temperature"
* $loinc#59408-5 "Oxygen saturation"