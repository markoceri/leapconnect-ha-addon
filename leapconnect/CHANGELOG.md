# Changelog

## 0.10.0

- Upgrade to LeapConnect v0.10.0
- Fix add-on build for the v0.10.0 package layout: copy the `leapconnect/`
  package, `alembic.ini` and `migrations/` instead of the removed
  `main.py`/`models.py`/`schemas.py`/`persistence`/`services` files
- Start the app via `leapconnect.api.app:app` and use `DB_PATH`
  (`/data/leapconnect.db`); the legacy `history.db` is auto-migrated on first
  start

## 0.9.1

- Upgrade to LeapConnect v0.9.1

## 0.9.0

- Upgrade to LeapConnect v0.9.0

## 0.8.2

- Upgrade to LeapConnect v0.8.2

## 0.9.0

- Upgrade to LeapConnect v0.9.0

## 0.8.2

- Upgrade to LeapConnect v0.8.2

## 0.8.1

- Upgrade to LeapConnect v0.8.1

## 0.8.0

- Upgrade to LeapConnect v0.8.0

## 0.7.3

- Upgrade to LeapConnect v0.7.3

## 0.7.2

- Upgrade to LeapConnect v0.7.2

## 0.7.1

- Upgrade to LeapConnect v0.7.1

## 0.7.0

- Upgrade to LeapConnect v0.7.0

## 0.6.1

- Upgrade to LeapConnect v0.6.1

## 0.6.0

- Upgrade to LeapConnect v0.6.0

## 0.5.2

- Upgrade to LeapConnect v0.5.2

## 0.5.1

- Upgrade to LeapConnect v0.5.1

## 0.5.0

- Upgrade to LeapConnect v0.5.0 (new features and bug fixes)

## 0.4.4

- Upgrade to LeapConnect v0.4.1 (includes ingress-compatible relative paths)

## 0.4.3

- Fix runtime dependency resolution failure by calling uvicorn directly from venv instead of `uv run`

## 0.4.2

- Fix `s6-overlay-suexec: fatal: can only run as pid 1` by adding `init: false` to config

## 0.4.1

- Fix base image tag: use `3.13-alpine3.21` format (old `3.13` tag no longer exists on ghcr.io)

## 0.4.0

- Initial Home Assistant add-on release
- Ingress support for seamless HA sidebar integration
- All features from LeapConnect v0.4.0
