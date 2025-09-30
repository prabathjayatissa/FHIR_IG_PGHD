# Wearable Device Data Implementation Guide

This Implementation Guide defines FHIR profiles and extensions for representing patient-generated health data from wearable devices. It supports data from various types of wearable devices including smartwatches, fitness bands, smart scales, and smart rings.

## Scope

This IG covers:
- Device information and identification
- Activity metrics (steps, distance, calories, active minutes)
- Vital signs (heart rate, respiratory rate, body temperature, SpO2)
- Sleep metrics (duration, sleep stages)

## Profiles


The main profiles defined in this IG are:
- WearableDevice: For representing wearable device information
- WearableObservation: Base profile for all wearable device observations
- ActivityObservation: For activity-related measurements
- WearableVitalSigns: For vital signs measurements
- SleepObservation: For sleep-related measurements

## Conformance

Systems conforming to this IG SHALL:
1. Support the defined profiles for representing device data
2. Use appropriate UCUM units for measurements
3. Include device references in observations
4. Provide mandatory elements as defined in the profiles