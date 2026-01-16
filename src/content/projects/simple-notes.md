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
stack: Kotlin, Jetpack Compose, Material Design 3, WebDAV, Docker, JSON/Markdown
github: https://github.com/inventory69/simple-notes-sync
---

Built because existing note apps either lock you into their cloud ecosystem or require complex self-hosted setups
that take hours to configure. Needed something that works offline, syncs reliably to a server you control,
and doesn't drain your battery with constant background processes.

**Completely rebuilt with Jetpack Compose in v1.5.0** - the UI is now faster, smoother, and more responsive.
The entire settings section has been reorganized into 7 intuitive categories, making configuration much clearer.

**Offline-first with automatic WebDAV sync** - create and edit notes without internet, sync automatically when
you're connected to WiFi. Configurable intervals (15/30/60 minutes) let you balance sync frequency
with battery life. Measured at ~0.4% battery drain per day with 30-minute intervals.

**Now with checklists (v1.4.0)** - tap to check/uncheck items, drag & drop to reorder, swipe to delete.
Checklists export as GitHub-style task lists, fully compatible with Obsidian and other Markdown editors.
Complete round-trip: edit in Obsidian, sync back to your phone.

**Multilingual support (v1.5.0)** - English and German with 400+ translated strings. Automatic language detection
follows your system settings, or manually select in the app. Android 13+ users get native per-app language
selection in system settings.

Built with **Material Design 3** and Dynamic Colors on Android 12+. Dark mode support, selection mode for
batch operations, and automatic saving. No manual "save" buttons - just write and move on.

The sync architecture uses **WebDAV** because it's a standard protocol supported by Nextcloud, ownCloud,
and basically every file server. No vendor lock-in. The included Docker container gets a WebDAV server
running in 5 minutes.

**Dual-format export** - primary storage is JSON for reliability, with optional Markdown export for desktop
integration. Edit notes in VS Code, Typora, or Obsidian, and changes sync back to your phone. Markdown files
include YAML frontmatter with IDs and timestamps for conflict resolution.

## Features

- **Jetpack Compose UI** - Modern, performant interface rebuilt from scratch. Smooth animations, responsive design
- **Checklists** - Tap-to-check, drag & drop reordering, GitHub-style Markdown export. Full Obsidian compatibility
- **Multilingual** - English + German with 400+ translated strings. Automatic language detection or manual selection
- **Offline-First** - Works without internet. Create, edit, delete notes anytime. Local storage is source of truth
- **Automatic WebDAV Sync** - WiFi trigger, configurable 15/30/60 minute intervals. Works with Nextcloud, ownCloud, any WebDAV server
- **Battery Optimized** - ~0.2-0.8% per day depending on sync interval. Doze Mode compatible with WorkManager
- **Material Design 3** - Dark mode, Dynamic Colors (Android 12+), selection mode for batch delete
- **Local Backup System** - Export all notes as JSON with 3 restore modes: Merge, Replace, or Overwrite duplicates
- **Desktop Integration** - Optional Markdown export with YAML frontmatter for VS Code, Typora, Obsidian
- **Self-Hosted** - Your data stays on your server. No cloud services, no tracking, no analytics
- **Multi-Device Sync** - Automatic download from other devices, deletion tracking prevents zombie notes

## Architecture

**Android App** built with Kotlin, Jetpack Compose, and Material Design 3. Minimum Android 8.0, target SDK 36.
Uses Android's WorkManager for reliable background sync even in Doze Mode. StateFlow for reactive UI updates.

**WebDAV Protocol** for sync because it's standardized and widely supported. No custom server code needed -
works with any WebDAV-compliant server. Included Docker setup uses httpd-alpine with mod_dav.

**Storage Strategy**: JSON files in `/notes/` for primary data, optional Markdown in `/notes-md/` for
desktop editing. Each note gets a UUID, created/updated timestamps, and device attribution.

**Background Sync** uses Android's periodic work requests with backoff policies. Only syncs when connected
to WiFi to save mobile data and battery. E-Tag caching provides 20x faster sync when server has no updates.

## Why This Works

**For Privacy**: Self-hosted means you control the data. No cloud providers mining your notes for AI training.
No analytics tracking what you write. Open source under MIT license - audit the code yourself.

**For Reliability**: Offline-first architecture means the app works even when your server is down.
Local database is source of truth, server is just for syncing across devices.

**For Battery Life**: Measured battery consumption instead of guessing. ~0.4% per day with 30-minute sync
means the app basically doesn't impact battery life. Doze Mode optimization ensures syncs happen reliably
without waking the device constantly.

**For Flexibility**: Standard WebDAV protocol means you're not locked into the included server.
Use Nextcloud, Synology NAS, Apache with mod_dav, or any other WebDAV server.

**For Productivity**: Checklists with Obsidian compatibility let you use the same task lists on phone and desktop.
Changes sync both ways - check items on your phone, see them checked in Obsidian.

**Stack**: Kotlin · Jetpack Compose · Android SDK · Material Design 3 · WebDAV · Docker · JSON/Markdown · WorkManager

**Setup Time**: 5 minutes for server (Docker), 2 minutes for app configuration
