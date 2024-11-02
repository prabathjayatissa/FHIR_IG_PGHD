Profile: SleepObservation
Parent: WearableObservation
Id: sleep-observation
Title: "Sleep Observation"
Description: "Profile for sleep-related observations from wearable devices"

* code from SleepMetricsVS (required)

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    totalDuration 0..1 and
    deepSleep 0..1 and
    lightSleep 0..1 and
    remSleep 0..1 and
    awakeTime 0..1

* component[totalDuration].code = $loinc#93832-4 "Sleep duration"
* component[totalDuration].value[x] only Quantity
* component[totalDuration].valueQuantity.system = $ucum
* component[totalDuration].valueQuantity.code = #min

* component[deepSleep].code = $loinc#93831-6 "Deep sleep time"
* component[deepSleep].value[x] only Quantity
* component[deepSleep].valueQuantity.system = $ucum
* component[deepSleep].valueQuantity.code = #min

* component[lightSleep].code = $loinc#93830-8 "Light sleep time"
* component[lightSleep].value[x] only Quantity
* component[lightSleep].valueQuantity.system = $ucum
* component[lightSleep].valueQuantity.code = #min

* component[remSleep].code = $loinc#93829-0 "REM sleep time"
* component[remSleep].value[x] only Quantity
* component[remSleep].valueQuantity.system = $ucum
* component[remSleep].valueQuantity.code = #min

* component[awakeTime].code = $loinc#93828-2 "Awake time"
* component[awakeTime].value[x] only Quantity
* component[awakeTime].valueQuantity.system = $ucum
* component[awakeTime].valueQuantity.code = #min

ValueSet: SleepMetricsVS
Id: sleep-metrics-vs
Title: "Sleep Metrics Value Set"
* $loinc#93832-4 "Sleep duration"
* $loinc#93831-6 "Deep sleep time"
* $loinc#93830-8 "Light sleep time"
* $loinc#93829-0 "REM sleep time"
* $loinc#93828-2 "Awake time"