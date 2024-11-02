# Profiles

## WearableDevice
Profile for representing wearable devices that collect patient-generated health data.

### Constraints
- Must specify device type
- Must include manufacturer and model information
- Must include device identifier

## WearableObservation
Base profile for all observations from wearable devices.

### Constraints
- Must reference a WearableDevice
- Must include measurement method
- Must include effective time
- Must include value

## ActivityObservation
Profile for activity-related measurements.

### Supported Measurements
- Step count
- Distance traveled
- Calories burned
- Active minutes

## WearableVitalSigns
Profile for vital signs measurements.

### Supported Measurements
- Heart rate
- Respiratory rate
- Body temperature
- Oxygen saturation (SpO2)

## SleepObservation
Profile for sleep-related measurements.

### Supported Measurements
- Total sleep duration
- Deep sleep time
- Light sleep time
- REM sleep time
- Awake time