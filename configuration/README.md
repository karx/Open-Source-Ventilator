## Device Configurations
The current version of Controller has the following settings available.

The following document list, describes and aims to categorize into either `compile-time` or `run-type` settings.

`compile-type` settings would include, the type of a periferal connected to the board, debug level, fixed Conversion coefficients etc.

`run-type` settings would include: breath, temprature, periferal states, etc.

###  DEVICE OPERATIONAL PARAMETERS

| Setting | Description | value | type | comments |
| ---- | ----- | --- | --- | ----|
| minBPM |  minimum respiratory speed | 10    | - | - |
| defaultBPM |  default respiratory speed | 20    | - | - |
| stepBPM |  adjustment step for respiratory speed | 1    | - | - |
| maxBPM |  maximum respiratory speed | 35    | - | - |
| minVolume |  minimum respiratory volume in milliliters  | 100    | - | - |
| defaultVolume |  default respiratory volume in milliliters  | 400    | - | - |
| stepVolume |  adjustment step for respiratory volume in milliliters  | 20    | - | - |
| maxVolume |  maximum respiratory volume in milliliters  | 950    | - | - |
| minCompression |  minimum compression for the ambu-bag in cm H2O | 10    | - | - |
| stepCompression |  adjustment step for compression for the ambu-bag in cm H2O | 2    | - | - |
| defaultCompression |  default compression for the ambu-bag in cm H2O | 20    | - | - |
| maxCompression |  maximum compression for the ambu-bag in cm H2O | 80    | - | - |
| minPEEPCompression |  minimum post expiration compression for the ambu-bag in cm H2O | 0    | - | - |
| stepPEEPCompression |  adjustment step for post expiration compression for the ambu-bag in cm H2O | 1    | - | - |
| defaultPEEPCompression |  default post expiration compression for the ambu-bag in cm H2O | 4    | - | - |
| maxPEEPCompression |  maximum post expiration compression for the ambu-bag in cm H2O | 25    | - | - |
| minApnea |  minimum value (no detection, no alarm) | 0    | - | - |
| stepApnea |  adjustment step for apnea alarm (in breathing cycles) | 1    | - | - |
| defaultApnea |  default apnea alarm | 2    | - | - |
| maxApnea |  maximum apnea alarm | 6    | - | - |
| minsyncRatio |  minimum portion of the cycle for breath synchronisation | 0.0  | - | - |
| stepsyncRatio | adjustment step for portion of the cycle for breath synchronisation | 0.05 | - | - |
| defaultsyncRatio | default portion of the cycle for breath synchronisation | 0.15 | - | - |
| maxsyncRatio | maximum portion of the cycle for breath synchronisation | 0.50 | - | - |
| minExpirationRatio | minimum portion of the cycle for breath synchronisation | 1.00 | - | - |
| stepExpirationRatio |  adjustment step for portion of the cycle for breath synchronisation | 0.2  | - | - |
| defaultExpirationRatio |  default portion of the cycle for breath synchronisation | 1.2  | - | - |
| maxExpirationRatio | maximum portion of the cycle for breath synchronisation | 3.00 | - | - |
| failVolumeRatio | In CP mode, Alarm if pressure reached before that portion of programmed volume. | 0.90 | - | - |
| defaultCVMode |  CV mode by default  | true | - | - |
| ambientPressureFilter | IIR filtering ratio (lower value produce longer time constant) | 0.02 | - | - |
| avgPressureFilter |  IIR filtering ratio (lower value produce longer time constant) | 0.1  | - | - |
| defaultPressure | Pressure in cm H2O returned when no sensor is found (1 atm) | 1033.22 | - | - |
| defaultAmbientPressure | assumed ambient pressure in cm H2O returned when no sensor is found (1 atm) | 1033.22 | - | - |
| defaultHumidity |  humidity in % RH returned when no sensor is found | 50    | - | - |
| defaultTemperature | temperature in °C returned when no sensor is found | 20.00 | - | - |
| alarmCompressionValue |  if the pressure exceeds the presed value * alarmCompressionValue, then trigger an alarm and stop the motor if needed   | 1.1  | - | - |
| minAtmosphericPressure |  minimum atmospheric pressure that would be considered valid (15000 ft / 4577m) // Source : https://www.avs.org/AVS/ |  files/c7/c7edaedb-95b2-438f-adfb-36de54f87b9e.pdf   | 583    | - | - |
| maxAtmosphericPressure |  maximum atmospheric pressure that would be considered valid  | 1200    | - | - |


### MOTOR PARAMETERS

| Setting | Description | value | type | comments |
| ---- | ----- | --- | --- | ----|
| motorSpeed |  Speed for 1 liter/second | 5000    | - | - |
| motorAcceleration |  Acceleration for 1 liter / second (inverse square of flow) | 8500    | - | - |
| motorMaxAcceleration |  deceleration when pressure limit reached | 30000    | - | - |
| motorMaxSpeed |  Max steps per second.  | 4000    | - | - |
| motorVolumeRatio |  Ratio of distance in steps to air volume in step per milliliter. | 0.8  | - | - |
