# dettmer.dev 🚀# 🌌 Milky-Way



> **Minimalist portfolio website built with Astro**Milky Way brings forth a minimalist design ethos, allowing your work to shine like stars in the night sky. With clean lines and intuitive navigation, visitors are guided effortlessly through your portfolio, focusing solely on your creations.



[![Astro](https://img.shields.io/badge/Astro-5.16.4-FF5D01.svg)](https://astro.build/)Embrace the whimsical charm of Milky Way as it showcases your talents in a manner that's both elegant and endearing. Whether you're a designer, developer, artist, or creative professional of any kind, Milky Way provides the perfect canvas to showcase your endeavors.

[![Node](https://img.shields.io/badge/Node-20%2B-339933.svg)](https://nodejs.org/)

[![Deployed](https://img.shields.io/badge/Deployed-dettmer.dev-78c2ad.svg)](https://dettmer.dev)With its responsive design, Milky Way ensures a seamless experience across devices, from desktops to smartphones, so your portfolio is accessible to all who wish to explore it. Let your work take center stage against the backdrop of this celestial template.



Personal portfolio showcasing projects, tech stack, and interests. Built with the Milky-Way Astro theme and deployed via GitHub Actions.<p align="center">

  <img align="center" alt="Astro" src="https://portal.astro.build/_image?href=https%3A%2F%2Fstorage.googleapis.com%2Fdev-portal-bucket%2Fli8pypvydk9xnzzrtrgzfw9q11j836g6y9efm8.webp&w=1600&h=900&f=webp"/>

---</p>



## ✨ Features[![Built with Astro](https://astro.badg.es/v2/built-with-astro/tiny.svg)](https://astro.build) [![Netlify Status](https://api.netlify.com/api/v1/badges/0b0bcb79-a1d8-4b32-9566-8f30af19e4cc/deploy-status)](https://app.netlify.com/sites/astro-milky-way/deploys)



- 🎨 **Dark/Light Mode** - System-aware theme with smooth transitions## 🔥 Features

- 📱 **Responsive Design** - Mobile-first approach with optimized images

- ⚡ **Fast Loading** - Static site generation, no JavaScript bloat- [x] Simple and clean design, perfect for showcasing your work.

- 🔐 **Production-Ready CI/CD** - GitHub Actions → rsync deployment- [x] Responsive layout for seamless viewing across different devices.

- 🖼️ **Project Showcase** - Discord Bot, Admin Panel, Gallery- [x] Fast and efficient, thanks to the Astro static site generator.

- [x] Easy to customize with CSS and straightforward HTML structure.

---

## ⚓ Lighthouse Score

## 🚀 Quick Start

<p align="center">

```bash  <img width="600" alt="Lighthouse Score" src="https://raw.githubusercontent.com/ttomczak3/Milky-Way/6e386e2f920c993c33d348a9c1271a1cec6c6d2b/milkyway-lighthouse-score.svg"/>

# Clone and install</p>

git clone https://github.com/inventory69/dettmer.dev-website.git

cd dettmer.dev-website## 🚀 Getting Started

npm install

Clone this repository to your local machine using Git.

# Development

npm run dev         # http://localhost:4321```scheme

git clone https://github.com/ttomczak3/Milky-Way.git

# Production buildcd Milky-Way

npm run build       # Output: dist/```

npm run preview     # Test production build

| Command           | Action                                       |

# Code quality| :---------------- | :------------------------------------------- |

npm run format      # Prettier| `npm install`     | Installs dependencies                        |

npm run lint        # ESLint| `npm run dev`     | Starts local dev server at `localhost:4321`  |

```| `npm run build`   | Build your production site to `./dist/`      |

| `npm run preview` | Preview your build locally, before deploying |

---

Edit the HTML files in the `src/pages` directory to add your projects, experiences, and personal information. You can also modify the CSS styles in `src/styles` to match your preferences.

## 📁 Project Structure

## 📂 Project Structure

```

dettmer.dev-website/```

├── src//

│   ├── components/     # Reusable Astro components├── public/

│   ├── content/        # Markdown content (projects, posts)│   └── GitHub.webp

│   ├── layouts/        # Page layouts│   └── blog-post.webp

│   ├── pages/          # Routes (index, works, projects/[slug])│   └── blog.webp

│   └── styles/         # Global CSS│   └── favicon.svg

├── public/│   └── laptop.webp

│   └── images/         # Static assets (9 project screenshots)│   └── space.webp

└── .github/│   └── youtube.webp

    └── workflows/      # CI/CD (build + deploy)├── src/

```│   ├── components/

│   ├── content/

---│   ├── layouts/

│   ├── pages/

## 🔧 Tech Stack│   ├── styles/

│   └── env.d.ts

**Frontend:**└── package.json

- Astro 5.16.4 (Static Site Generator)```

- Google Fonts (Josefin Sans, Pacifico)

- Responsive CSS Grid## 💻 Contributing



**Deployment:**Contributions to this project are welcome. If you find a bug or have a suggestion for improvement, please open an issue or submit a pull request.

- GitHub Actions (Build on push)

- rsync (Deploy to VPS)## 📃 License

- Nginx (Static file serving)

- Let's Encrypt (SSL/TLS)This project is licensed under the MIT License. See the `LICENSE` file for details.



**Development:**## ☕ Support

- Prettier + prettier-plugin-astro

- ESLint + eslint-plugin-astroIf you enjoy Milky-Way and would like to show your support and appreciation through a tip, I would gratefully accept it.

- TypeScript support

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X8X0P7FGR)

---

## 🚢 Deployment

### GitHub Actions Workflow

Automatic deployment on push to `main`:

1. ✅ Checkout code
2. ✅ Setup Node.js 20 with npm cache
3. ✅ Install dependencies (`npm ci`)
4. ✅ Build Astro site (`npm run build`)
5. ✅ Deploy via rsync to production server

**Required Secrets:**
- `SSH_PRIVATE_KEY` - Deployment SSH key
- `SERVER_HOST` - Production server IP

### Manual Deployment

```bash
# Build locally
npm run build

# Deploy with rsync
rsync -avz --delete ./dist/ user@server:/var/www/dettmer.dev/
```

---

## 📝 Content Management

### Adding Projects

```bash
# Create new project
cat > src/content/projects/my-project.md << 'EOF'
---
title: "My Project"
description: "Short description"
date: 2025-12-10
image: "/images/my-project.webp"
stack: ["Python", "Docker"]
---

## Overview
Project details here...
EOF

# Add project images
cp my-project.webp public/images/
```

### Customizing Theme

Edit `src/styles/global.css`:
```css
:root {
  --background: #1e1e2e;      /* Dark mode background */
  --text: #eff1f5;            /* Dark mode text */
  --button: #78c2ad;          /* Accent color */
  --header: "Pacifico", ...;  /* Header font */
  --body: "Josefin Sans", ...; /* Body font */
}
```

---

## 🎨 Customization

**Colors:** `src/styles/global.css` (CSS variables)  
**Fonts:** `src/layouts/Layout.astro` (Google Fonts)  
**Footer:** `src/components/Footer.astro` (Links, copyright)  
**Navigation:** `src/components/Navigation.astro` (Menu items)

---

## 📊 Performance

- **Lighthouse Score:** 95+ (Performance, Accessibility, SEO)
- **Build Time:** ~3 seconds (local), ~30 seconds (CI/CD)
- **Page Size:** ~9KB HTML, ~200KB images (WebP optimized)
- **Load Time:** <1 second (with caching)

---

## 🔗 Links

- **Live Site:** [dettmer.dev](https://dettmer.dev)
- **Status Page:** [status.dettmer.dev](https://status.dettmer.dev)
- **Gallery:** [gallery.voidtales.win](https://gallery.voidtales.win)

---

## 📄 License

MIT License - feel free to use this as a template for your own portfolio!

---

**Built with ❤️ using Astro · Deployed on self-hosted infrastructure · Probably overengineered**
