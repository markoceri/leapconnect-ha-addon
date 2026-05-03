# LeapConnect

Web dashboard for Leapmotor vehicles with Home Assistant MQTT integration.

## About

LeapConnect provides a full-featured dashboard to monitor and control your Leapmotor electric vehicle. When running as a Home Assistant add-on, it integrates directly into the HA sidebar via ingress and can publish vehicle telemetry to Home Assistant via MQTT Discovery.

## Features

- Real-time vehicle status (battery, location, climate, tires)
- Vehicle history with charts
- In-app messages from Leapmotor
- Remote commands (lock/unlock, climate, trunk, windows)
- MQTT integration with Home Assistant auto-discovery
- Dynamic car image reflecting actual vehicle state

## Configuration

| Option | Description | Default |
|---|---|---|
| `log_level` | Logging verbosity | `info` |

## First-time setup

After installing the add-on:

1. Open LeapConnect from the Home Assistant sidebar
2. Follow the setup wizard to upload your Leapmotor API certificates
3. Enter your Leapmotor account credentials
4. Configure MQTT (optional) to publish vehicle data to Home Assistant

## MQTT Integration

To have vehicle sensors appear in Home Assistant automatically:

1. Make sure the **Mosquitto broker** add-on (or an external MQTT broker) is running
2. In LeapConnect **Settings → MQTT**, enable MQTT and enter broker details
3. Vehicle entities will appear automatically via MQTT Discovery

## Support

- [GitHub Issues](https://github.com/markoceri/leapconnect/issues)
- [Source Code](https://github.com/markoceri/leapconnect)
