---
title: "Discord Community Management Bot"
description: "Feature-rich Discord bot with modular architecture, gaming integrations, and analytics"
image:
  url: "/images/discord-bot-welcome.webp"
  alt: "Discord Bot Welcome Screen"
worksImage1:
  url: "/images/statusdashboardcommand.webp"
  alt: "Bot Status Dashboard"
worksImage2:
  url: "/images/discord-bot-welcome.webp"
  alt: "Discord Bot Interface"
platform: Discord Bot + REST API
stack: Python 3.11+, Discord.py 2.0+, Flask 3.0+, SQLite, Docker
---

Started as a Discord bot for The Chillventory server. Then added Rocket League stats, Warframe market prices, a meme generator,
ticket system, analytics dashboard, and somehow ended up with 22 modular cogs that do everything from auto-posting daily memes
to tracking user activity in real-time.

**Built with 22 modular cogs** - each feature is a separate, hot-reloadable module. Gaming integration with Rocket League rank tracking
and Warframe market data. Meme system with 100+ Imgflip templates. Support tickets with email transcripts. Analytics dashboard with charts.

The API evolved from a massive single file into a clean Blueprint architecture. Now it's actually maintainable when something breaks.

Backend is Python with discord.py 2.0+ and Flask 3.0+ because they're solid and don't overcomplicate things. **SQLite** handles all the data -
user analytics, ticket transcripts, meme cache, session tracking. Table partitioning keeps analytics queries fast even with growing data.

JWT authentication with role-based access for the Flutter admin panel. WebSocket support for real-time ticket updates. 
Push notifications that intelligently suppress when you're already viewing the conversation.

Everything runs in Docker containers. Development and production environments stay consistent. No "works on my machine" problems.

## Architecture

22 modular cogs keep everything organized. Want to add Warframe alerts? New cog. Need to fix ticket transcripts? Reload just that cog.
No full bot restarts for every change.

API uses Flask Blueprints - auth, analytics, tickets, memes all separated. Makes it possible to debug issues without hunting
through thousands of lines. API server is optional - runs via `start_with_api.py`, regular bot via `Main.py`.

## Features

- **Gaming Integration** - Rocket League stats with auto rank-up notifications, Warframe market prices and live game alerts
- **Meme System** - Daily automated posts from Reddit/Lemmy + custom generator with 100+ templates and interactive GUI
- **Ticket System** - Real-time support with admin panel integration, email transcripts, auto-archiving, smart push notifications
- **Analytics Dashboard** - Real-time session tracking, user growth charts, active monitoring, device analytics
- **Moderation Tools** - Interactive mod panel with mute/kick/ban/warn, message cache for instant loading
- **Management Features** - AI-powered changelogs, todo lists, welcome system, channel controls

## Tech Details

Flask 3.0+ for the REST API because it's lightweight and modular. Discord.py 2.0+ handles bot interactions - slash commands, events,
WebSocket connections. Python 3.11+ with proper type hints.

**SQLite with SQLAlchemy ORM** - table partitioning for analytics, indexed queries for performance, cached aggregates to avoid redundant calculations.
Simpler than PostgreSQL, still powerful enough for everything this needs.

JWT authentication for the admin panel. WebSocket connections for real-time ticket updates. Performance optimized with caching and smart queries.

Docker keeps deployment consistent. Same containers in dev and production. No environment surprises.

**Stack**: Python 3.11+ · Discord.py 2.0+ · Flask 3.0+ · SQLite · Docker · JWT · WebSocket
