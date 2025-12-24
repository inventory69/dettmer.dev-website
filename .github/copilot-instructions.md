# dettmer.dev Copilot Instructions

## Architecture Overview

**dettmer.dev** is a personal portfolio website built with Astro 5.x, deployed via GitHub Actions to a self-hosted server.

### Tech Stack

- **Astro 5.x** - Static site generation with TypeScript
- **CSS3** - Custom styling (no framework)
- **GitHub Actions** - CI/CD pipeline
- **rsync** - Production deployment to server

### Project Structure

```
dettmer.dev-website/
├── src/                          # Source files
│   ├── pages/                    # Routes (index.astro, about.astro, etc.)
│   ├── components/               # Reusable Astro components
│   ├── layouts/                  # Page layouts
│   └── styles/                   # Global CSS
├── public/                       # Static assets (images, fonts, etc.)
├── astro.config.mjs              # Astro configuration
├── tsconfig.json                 # TypeScript config
├── .github/workflows/deploy.yml  # Automated deployment
└── package.json                  # Dependencies and scripts
```

## Astro Fundamentals

### Component Syntax

Astro components use `.astro` extension with frontmatter and template:

```astro
---
// TypeScript/JavaScript (runs at build time)
const title = "My Page";
const items = [1, 2, 3];
---

<!-- HTML template (supports JSX-like syntax) -->
<div>
  <h1>{title}</h1>
  {items.map((item) => <p>{item}</p>)}
</div>

<style>
  /* Scoped CSS (applies only to this component) */
  h1 {
    color: blue;
  }
</style>
```

### Routing

File-based routing in `src/pages/`:

- `pages/index.astro` → `/`
- `pages/about.astro` → `/about`
- `pages/blog/[slug].astro` → `/blog/*` (dynamic routes)

### Build Output

Astro generates static HTML/CSS/JS in `dist/` directory. No server-side runtime required.

## Development Workflow

### Local Development

```bash
npm run dev         # Start dev server at http://localhost:4321
npm run build       # Build for production
npm run preview     # Preview production build locally
```

**Hot Reload:** Dev server auto-reloads on file changes.

### Code Quality

```bash
npm run lint              # ESLint static analysis
npm run format            # Prettier code formatting
npm run format:check      # Check formatting without changes
```

**Pre-commit:** Run `npm run format` and `npm run lint` before committing.

## Deployment Pipeline

### GitHub Actions (`.github/workflows/deploy.yml`)

Triggered on push to `main` branch:

1. **Checkout Code** - Clone repository
2. **Setup Node.js** - Install Node 20 with npm cache
3. **Install Dependencies** - `npm ci` (clean install)
4. **Build Site** - `npm run build` (generates `dist/`)
5. **Setup SSH** - Configure SSH key and known hosts
6. **Deploy via rsync** - Sync `dist/` to `/var/www/dettmer.dev/` on server

**Server Configuration:**

- Host: Defined in GitHub Secrets (`SERVER_HOST`)
- User: `github-actions`
- SSH Key: Stored in GitHub Secrets (`SSH_PRIVATE_KEY`)
- Path: `/var/www/dettmer.dev/`

**Known Hosts:** Hardcoded in workflow (see lines 39-41 for RSA, ECDSA, Ed25519 keys)

### Manual Deployment

If needed, deploy manually:

```bash
npm run build
rsync -avz --delete ./dist/ user@server:/var/www/dettmer.dev/
```

## Styling Patterns

### Global Styles

- `src/styles/global.css` - Imported in layout components
- CSS custom properties for theming (e.g., `--primary-color`)

### Component Styles

- Scoped by default (styles in `<style>` tags apply only to component)
- Use `:global()` for global selectors when needed

### Dark/Light Mode

Implement with CSS custom properties + JavaScript theme toggle:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

[data-theme="dark"] {
  --bg-color: black;
  --text-color: white;
}
```

## Common Patterns

### Creating New Page

1. Create `src/pages/newpage.astro`
2. Import layout: `import Layout from '../layouts/Layout.astro';`
3. Add content inside `<Layout>` component
4. Link from other pages: `<a href="/newpage">New Page</a>`

### Reusable Component

```astro
---
// src/components/Card.astro
interface Props {
  title: string;
  description: string;
}

const { title, description } = Astro.props;
---

<div class="card">
  <h3>{title}</h3>
  <p>{description}</p>
</div>

<style>
  .card {
    padding: 1rem;
    border: 1px solid gray;
  }
</style>
```

Usage:

```astro
---
import Card from "../components/Card.astro";
---

<Card title="Hello" description="World" />
```

### Dynamic Data (Static Generation)

Fetch data at build time:

```astro
---
const response = await fetch("https://api.example.com/data");
const data = await response.json();
---

<ul>
  {data.map((item) => <li>{item.name}</li>)}
</ul>
```

## Configuration

### Astro Config (`astro.config.mjs`)

```js
export default {
  site: "https://dettmer.dev",
  output: "static", // Static site (default)
  // Add integrations, build settings, etc.
};
```

### TypeScript Config (`tsconfig.json`)

Extends Astro's base config. Customize paths, strictness, etc.

## Performance Best Practices

- **Image Optimization:** Use Astro's `<Image>` component for automatic optimization
- **Lazy Loading:** Defer non-critical resources with `loading="lazy"`
- **CSS:** Minimize global styles, prefer scoped component styles
- **JavaScript:** Astro ships zero JS by default—only add when needed (use `<script>` tags)

## Troubleshooting

### Build Fails in GitHub Actions

- Check Node.js version matches `package.json` engine requirement
- Verify all dependencies are in `package.json` (not just `devDependencies`)
- Review build logs for missing environment variables

### rsync Deployment Errors

- Verify SSH key is correct in GitHub Secrets
- Check known_hosts match server fingerprints
- Confirm server path `/var/www/dettmer.dev/` exists and is writable

### Site Not Updating After Deploy

- Clear browser cache (Ctrl+Shift+R)
- Check NGINX cache settings on server
- Verify rsync completed successfully in GitHub Actions logs

### TypeScript Errors

- Run `npm install` to ensure types are up to date
- Check `tsconfig.json` for strict settings causing issues
- Use `// @ts-ignore` as last resort for third-party type issues

## Maintenance

### Updating Dependencies

```bash
npm outdated           # Check for updates
npm update             # Update within semver ranges
npm install pkg@latest # Update specific package to latest
```

**Major Version Updates:** Review changelogs before updating Astro or major dependencies.

### Adding New Features

1. Test locally: `npm run dev`
2. Build: `npm run build`
3. Preview: `npm run preview`
4. Commit and push to `main` (auto-deploys)

### Monitoring

- Check GitHub Actions for deployment status
- Monitor server logs: `journalctl -u nginx -f`
- Verify site loads: `curl -I https://dettmer.dev`
