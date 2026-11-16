# Tourism App

[![CI](https://github.com/EllieNtasio/tourism_app/actions/workflows/ci.yml/badge.svg)](https://github.com/EllieNtasio/tourism_app/actions/workflows/ci.yml)

A Flutter app for exploring places nearby: see points of interest on a map, check the weather, save favourites (offline too), and record your own hiking trails.

## Planned features

- **Map** – OpenStreetMap tiles with your current location
- **Nearby places** – points of interest from the Overpass API, filtered by category and distance, with search
- **Place details** – info plus the local weather from Open-Meteo
- **Favourites** – saved locally with Drift and available offline, synced to Firestore after Google sign-in
- **Custom lists** – e.g. "Weekend hikes"
- **Trail recording** – record a GPS route, see distance, duration and elevation, save finished trips
- **Languages** – Greek and English

## Tech stack

| Concern | Choice |
| --- | --- |
| State management | [Riverpod](https://riverpod.dev) |
| Navigation | [go_router](https://pub.dev/packages/go_router) |
| HTTP | [dio](https://pub.dev/packages/dio) |
| Map | flutter_map + OpenStreetMap *(week 3)* |
| Local storage | Drift *(week 8)* |
| Auth & sync | Firebase Auth + Firestore *(weeks 9–10)* |

## Project structure

Code is organised **feature-first**: each feature owns its data, domain and presentation layers.

```
lib/
├── main.dart              # entry point, wraps the app in a ProviderScope
├── app/                   # app widget, router, theme
├── core/                  # shared code used by every feature
│   └── network/           # dio client provider
└── features/
    └── <feature>/
        ├── data/          # API clients, DTOs, repository implementations
        ├── domain/        # models and repository interfaces
        └── presentation/  # screens, widgets, notifiers
```

## Getting started

Requires Flutter (stable, Dart 3.10+).

```bash
flutter pub get
flutter run
```

Checks run on every pull request:

```bash
dart format lib test
flutter analyze
flutter test
```

## Roadmap

| Phase | Weeks | Scope | Release |
| --- | --- | --- | --- |
| 0 · Foundation | 1–2 | Project setup, CI, app shell with themes and navigation | `v0.1.0` |
| 1 · Core app | 3–8 | Map, nearby places, search and filters, place details and weather, offline favourites | `v0.2.0` |
| 2 · Accounts and sync | 9–11 | Google sign-in, Firestore sync, custom lists, Greek/English | `v0.3.0` |
| 3 · Trails and release | 12–14 | GPS trail recording, stats, sharing, store testing release | `v1.0.0` |

## Progress log

| Week | What changed |
| --- | --- |
| 1 | Project setup: Riverpod, go_router, dio, feature-first structure, stricter lints, CI |
