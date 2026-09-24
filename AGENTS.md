# Repository Guidelines

## Project Structure & Module Organization

This repository is a Jekyll site based on the Chirpy theme. Write posts in `_posts/` using `YYYY-MM-DD-title.md`; page content belongs in `_tabs/`, while `_layouts/` and `_includes/` define reusable Liquid templates. Site data and settings live in `_data/` and `_config.yml`. Edit source JavaScript in `_javascript/` and Sass in `_sass/` or `assets/css/`; generated browser assets are stored under `assets/js/`. Images, PDFs, and other static files belong in `assets/`. Treat `_site/` as generated output. Maintenance scripts are in `tools/` and `_scripts/`.

## Build, Test, and Development Commands

- `bundle install` installs Ruby and Jekyll dependencies.
- `npm install` installs the asset pipeline and Git hooks.
- `npm run build` bundles JavaScript and purges unused CSS for production.
- `bash tools/run.sh` starts Jekyll with live reload at `127.0.0.1`.
- `bash tools/test.sh` creates a production build and checks internal HTML with HTMLProofer.
- `npm test` runs the SCSS linter; use `npm run lint:fix:scss` for safe automatic fixes.

Run the asset build and site test before opening a pull request.

## Coding Style & Naming Conventions

Follow `.editorconfig`: UTF-8, LF endings, two-space indentation, final newlines, and no trailing whitespace except where Markdown requires it. Use single quotes in JavaScript, CSS, and SCSS. Stylelint enforces the SCSS rules in `.stylelintrc.json`; Markdown follows `.markdownlint.json`. Keep Liquid templates focused and reuse existing includes. Follow existing post filenames, and use lowercase kebab-case for new branches and general asset names.

## Testing Guidelines

The repository has no unit-test suite or coverage threshold. Validation is integration-focused: ensure `npm test` passes, then run `bash tools/test.sh` to catch Jekyll build failures and broken internal links. Preview visual changes locally and check responsive layouts, navigation, syntax highlighting, and both color modes where relevant.

## Commit & Pull Request Guidelines

Use Conventional Commits, as enforced by commitlint: `feat: add archive filter`, `fix(search): handle empty query`, or `docs: clarify setup`. Keep commits scoped and imperative. Pull requests should select a change type, summarize the change and motivation, link issues (for example, `Fixes #123`), and disclose new dependencies. Include before/after screenshots for visible changes and confirm the build and tests performed.

## Configuration & Security

Do not commit credentials, tokens, or private analytics values. Review generated changes before committing, especially files under `_site/` and compiled assets.
