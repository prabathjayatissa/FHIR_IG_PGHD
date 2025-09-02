Profile: ActivityObservation
Parent: WearableObservation
Id: activity-observation
Title: "Activity Observation"
Description: "Profile for activity-related observations from wearable devices"

* code from ActivityMetricsVS (required)
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    steps 0..1 and 
    distance 0..1 and
    calories 0..1 and
    activeMinutes 0..1

* component[steps].code = $loinc#55423-8 "Number of steps"
* component[steps].value[x] only Quantity
* component[steps].valueQuantity.system = $ucum
* component[steps].valueQuantity.code = #{steps}

* component[distance].code = $loinc#55430-3 "Distance traveled"
* component[distance].value[x] only Quantity
* component[distance].valueQuantity.system = $ucum
* component[distance].valueQuantity.code = #km

* component[calories].code = $loinc#55421-2 "Energy burned"
* component[calories].value[x] only Quantity
* component[calories].valueQuantity.system = $ucum
* component[calories].valueQuantity.code = #kcal

* component[activeMinutes].code = $loinc#55411-3 "Active time"
* component[activeMinutes].value[x] only Quantity
* component[activeMinutes].valueQuantity.system = $ucum
* component[activeMinutes].valueQuantity.code = #min

ValueSet: ActivityMetricsVS
Id: activity-metrics-vs
Title: "Activity Metrics Value Set"
* $loinc#55423-8 "Number of steps"
* $loinc#55430-3 "Distance traveled"
* $loinc#55421-2 "Energy burned"
* $loinc#55411-3 "Active time"
