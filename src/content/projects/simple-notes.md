---
title: "Simple Notes Sync - Privacy-First Note-Taking"
description: "Minimalist offline notes with automatic WebDAV sync to your own server"
image:
  url: "/images/simple-notes-main.webp"
  alt: "Simple Notes Sync App - Jetpack Compose UI"
worksImage1:
  url: "/images/simple-notes-main.webp"
  alt: "Simple Notes Sync Homescreen with Note List"
worksImage2:
  url: "/images/simple-notes-settings.webp"
  alt: "Modernized Settings with 7 Categories"
platform: Android 8.0+ (Self-Hosted Backend)
stack: Kotlin, Jetpack Compose, Material Design 3, WebDAV, Docker
github: https://github.com/inventory69/simple-notes-sync
---

Built because existing note apps either lock you into their cloud or require complex self-hosted setups.
Needed something that works offline, syncs to a server you control, and doesn't drain your battery.

**Rebuilt with Jetpack Compose in v1.5.0** - faster, smoother UI with 7 reorganized settings categories.
Multilingual support (English + German) with 400+ translated strings and automatic language detection.

**Offline-first with WebDAV sync** - create and edit notes without internet, sync automatically on WiFi.
Configurable intervals (15/30/60 min) balance sync frequency with battery life (~0.4% drain per day).

**Checklists with Obsidian compatibility** - tap to check, drag to reorder, export as GitHub-style Markdown.
Edit in Obsidian on desktop, sync back to your phone. Full round-trip support.

Built with **Material Design 3** and Dynamic Colors on Android 12+. Dark mode, selection mode for batch
operations, and automatic saving. The included Docker container gets a WebDAV server running in 5 minutes.

## Features

- **Jetpack Compose UI** - Modern interface with smooth animations and responsive design
- **Checklists** - Tap-to-check, drag & drop reordering, GitHub-style Markdown export
- **Multilingual** - English + German with automatic language detection
- **Offline-First** - Works without internet, local storage is source of truth
- **WebDAV Sync** - Works with Nextcloud, ownCloud, any WebDAV server
- **Battery Optimized** - ~0.2-0.8% per day, Doze Mode compatible
- **Material Design 3** - Dark mode, Dynamic Colors, selection mode
- **Desktop Integration** - Markdown export for VS Code, Typora, Obsidian
- **Self-Hosted** - Your data stays on your server. No tracking, no analytics

## Architecture

**Android App** built with Kotlin, Jetpack Compose, Material Design 3. Uses WorkManager for reliable
background sync even in Doze Mode. StateFlow for reactive UI updates.

**WebDAV Protocol** for sync - standardized and widely supported. No custom server needed.
Included Docker setup uses httpd-alpine with mod_dav.

**Storage**: JSON files in `/notes/` for primary data, optional Markdown in `/notes-md/` for desktop.
Each note gets a UUID and timestamps for conflict resolution. E-Tag caching for 20x faster syncs.

**Setup Time**: 5 minutes for server (Docker), 2 minutes for app configuration
