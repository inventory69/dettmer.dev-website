---
title: "VoidTales Gallery - Community Image Sharing"
description: "Automated community gallery for VoidTales Action RPG server with Discord integration"
image:
  url: "/images/gallery-homepage.webp"
  alt: "Void Tales Gallery"
worksImage1:
  url: "/images/gallery-homepage.webp"
  alt: "Gallery Homepage"
worksImage2:
  url: "/images/galleryview.webp"
  alt: "Gallery Grid View"
platform: Web (Static Site Generator) + Discord Integration
stack: Astro 4.x, TypeScript, Sharp, GLightbox, Discord API, Node.js, Python
website: https://gallery.voidtales.win
---

Built for the **VoidTales Action RPG server** community. Players needed an easy way to share screenshots, builds, 
and epic moments without relying on third-party image hosts that shut down or start limiting uploads.

The magic happens through a **custom n8n workflow** that connects everything. Players drop images in a dedicated Discord channel,
and the automation handles the rest. Built an extensive workflow with pre-checks, validation, image processing, metadata extraction,
and automatic deployment to the gallery.

Static site built with **Astro 4.x** for blazing-fast performance. Discord integration means zero friction for users - 
they just post in Discord like they normally would. Behind the scenes, n8n orchestrates the entire pipeline from Discord 
message to live gallery entry.

Automatic **WebP thumbnail generation** at three resolutions (200px, 400px, 800px), lazy loading with infinite scroll,
responsive grid layout. Sharp handles all the image processing - fast and efficient.

**GLightbox** provides smooth, accessible image viewing with share buttons and original image links. Markdown-driven metadata
with precise date sorting (down to the millisecond). Every image gets proper attribution back to the Discord user who posted it.

Self-hosted means full control and no random shutdowns when a company pivots their business model. The VoidTales community
owns their content.

## Technical Features

- **Discord Integration** - Players post images directly in Discord. No separate upload UI needed
- **n8n Automation Workflow** - Extensive automation pipeline with pre-checks, validation, and processing
- **Static Site Generation** - Built with Astro 4.x for blazing-fast loading times. Everything pre-rendered at build time
- **Automatic WebP Thumbnails** - Sharp generates optimized thumbnails at 200px, 400px, and 800px resolutions
- **Markdown-Driven Metadata** - Each photo gets a markdown file with user attribution, date, and captions
- **Smart Sorting** - By date (newest first, millisecond precision), name, or random order
- **Infinite Scroll** - Lazy loading with animated transitions as you scroll. Loads more images seamlessly
- **GLightbox Integration** - Smooth, accessible lightbox with share buttons and view original functionality
- **Responsive Grid** - Flexbox layout adapts to any screen size. Phone, tablet, desktop, ultrawide - all covered
- **Dark Mode** - Flicker-free theme switching with local storage persistence
- **Direct Linking** - Every image gets a unique ID for reliable sharing and direct linking
- **Performance First** - Static generation means instant loading. No server processing needed

## The Automation Pipeline

Built a comprehensive **n8n workflow** that orchestrates everything:

1. **Discord Webhook** - Listens for new images in the VoidTales gallery channel
2. **Pre-Checks** - Validates image format, size, and content before processing
3. **Image Processing** - Downloads image, generates WebP thumbnails at multiple resolutions
4. **Metadata Generation** - Creates markdown file with user attribution, timestamp, and description
5. **File Organization** - Saves images and metadata to correct directories
6. **Deployment Trigger** - Automatically rebuilds and deploys the updated gallery

The workflow handles edge cases, validates everything, and ensures clean data. Players just drop images in Discord
and see them live on the gallery within minutes. Zero friction for users, full automation behind the scenes.

## Why This Works

**For Players**: Dead simple. Post in Discord like normal. Image shows up on the gallery automatically.

**For Performance**: Static site generation means instant loading. No database queries, no server processing.
Just pre-rendered HTML and optimized images served fast.

**For Control**: Self-hosted on VoidTales infrastructure. No reliance on third-party services that might shut down.
Community owns their content.

**For Flexibility**: n8n workflow is fully customizable. Want to add watermarks? Moderate content? Change image processing?
Just adjust the workflow nodes.

**Stack**: Astro 4.x · TypeScript · Sharp · GLightbox · Discord API · Node.js · Python Scripts · WebP Optimization

**Automation**: n8n workflow automation orchestrates the entire pipeline
