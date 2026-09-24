# Repository Guidelines

## Project Structure & Module Organization

This repository is a personal Jekyll site built with the Chirpy theme gem. Write posts in `_posts/` using `YYYY-MM-DD-title.md`. Navigation pages live in `_tabs/`; each tab needs an icon, order, and stable permalink in its front matter. Site settings are in `_config.yml`. Keep original images in `assets/img/` and publications in `assets/pdf/`. Files such as `assets/404.html`, `assets/feed.xml`, and `assets/robots.txt` provide site endpoints. Treat `_site/` as generated output and never commit it.

## Build, Test, and Development Commands

- `bundle install` installs Jekyll, Chirpy, and test dependencies.
- `bundle exec jekyll serve --livereload` starts the local site at `http://127.0.0.1:4000`.
- `JEKYLL_ENV=production bundle exec jekyll build` creates the production site in `_site/`.
- `bundle exec htmlproofer _site --disable-external` checks generated HTML and internal links.

Use Ruby 3.4, matching `.ruby-version` and the GitHub Pages workflow.

## Coding Style & Naming Conventions

Follow `.editorconfig`: UTF-8, LF endings, two-space indentation, final newlines, and no trailing whitespace except where Markdown requires it. Use YAML front matter delimited by `---`. Keep post filenames stable because their names determine existing `/posts/.../` URLs. Prefer root-relative asset references such as `/assets/img/posts/example.png`. Use lowercase kebab-case for new general assets; preserve existing publication filenames because pages link to them directly.

## Testing Guidelines

There is no unit-test suite or coverage threshold. Validation is integration-focused: build the production site, run HTMLProofer, and preview it locally. For visual changes, check desktop and mobile layouts, navigation tabs, post images, PDF links, comments, and dark mode. Do not rely solely on `_site/` from a previous build.

## Commit & Pull Request Guidelines

Use concise Conventional Commits, for example `feat: add research post`, `fix: repair publication link`, or `chore: upgrade chirpy`. Keep commits focused. Pull requests should summarize the change, explain its motivation, link related issues, list validation performed, and include screenshots for visible changes.

## Configuration & Security

Never commit tokens or private analytics credentials. Put public site metadata in `_config.yml`; store deployment secrets in GitHub repository settings. Review generated output and dependency lockfile changes before committing.
