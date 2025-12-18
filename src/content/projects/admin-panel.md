---
title: "Cross-Platform Admin Dashboard"
description: "Flutter-based admin panel for managing Discord bot features and analytics"
image:
  url: "/images/admin-panel-dashboard.webp"
  alt: "Admin Panel Dashboard"
worksImage1:
  url: "/images/ticketchat.webp"
  alt: "Ticket Chat Interface"
worksImage2:
  url: "/images/meme-generator.webp"
  alt: "Meme Generator Interface"
platform: Web / Android / iOS / Linux Desktop
stack: Flutter 3.0+, Dart 3.0+, Material Design 3, Provider, REST API
---

Got tired of SSH-ing into the server every time I needed to check user stats or post a meme. Needed a proper interface
that I could use from anywhere - phone, tablet, desktop browser.

Built this admin panel with Flutter 3.0+. Figured if I'm gonna build it anyway, might as well make it cross-platform from the start.
Same codebase runs on Web (primary), Android, iOS, and Linux Desktop. Write once, deploy everywhere - and it actually works this time.

**30,556 lines of Flutter/Dart code** implementing everything from real-time WebSocket ticket chat to optimistic UI updates.
Material Design 3 with Android 16 Monet dynamic theming - extracts colors from your wallpaper for personalized UI.

Has real-time user monitoring (see exactly who's online right now), built-in meme generator with live preview,
analytics dashboards, user management. Basically everything you'd want to do without touching a terminal.

Discord OAuth for login because let's be honest - nobody wants to remember another password. Click a button, you're in.

Dark mode is default because it's 2025. Light theme exists for the people who apparently enjoy eye pain.

## Features

- **Real-time monitoring** - Live view of active sessions. Shows what device they're using, even catches emulators. Helps debug issues before users even report them
- **WebSocket ticket system** - Real-time chat with instant message delivery. Message caching for instant loading. Smart push notifications that suppress when you're actively viewing
- **Meme generator** - Built-in creator with live preview. Pick a template, add text, post instantly. No more downloading images and editing them like a caveman
- **Analytics dashboard** - Graphs and charts showing activity trends. Surprisingly addictive to watch the numbers go up
- **User management** - Manage roles and permissions without touching a database. Revolutionary concept, I know
- **Rocket League stats** - Integrated stats viewer. Because why leave the app when you can see everything in one place
- **Optimistic UI** - Actions show instantly while API requests happen in background. Feels way faster than waiting for responses
- **Hybrid navigation** - Bottom tabs for user features, navigation rail for admin tools. Best of both worlds
- **Theme toggle** - Switch between dark and light mode. Dark is default because we're not barbarians

## Tech Details

Flutter 3.0+ was the obvious choice. Write once, deploy everywhere. **Material Design 3** with Android 16 Monet dynamic theming
keeps the UI modern and consistent across all platforms without extra work.

State management with **Provider**. Keeps things simple, no unnecessary complexity. REST API calls with proper error handling
and retry logic. **WebSocket service** handles real-time ticket updates with automatic reconnection.

Discord OAuth2 integration means users just click a button and they're authenticated. No signup forms, no password resets,
none of that annoying stuff.

Responsive design that actually works. Same app scales from phone to tablet to desktop browser. No separate codebases to maintain.
Web is the primary platform, but Android and Linux Desktop builds work just as well.

## UX

Optimistic UI updates. When you post a meme, it shows up immediately while the API request happens in the background. Feels way faster.

Pull-to-refresh on all list views. Swipe gestures where they make sense. Bottom navigation for main sections.

Error handling that actually tells you what went wrong. Not just "Something went wrong" - actual error messages you can understand and act on.

**Stack**: Flutter 3.0+ · Dart 3.0+ · Material Design 3 · Provider · WebSocket · REST API · Discord OAuth2
