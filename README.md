# andersontenorio.github.io

Personal website and technical blog built with Jekyll and the
[Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy).

## Local development

Use Ruby 3.4, then install dependencies and start Jekyll:

```console
bundle install
bundle exec jekyll serve --livereload
```

Before publishing, create and verify a production build:

```console
JEKYLL_ENV=production bundle exec jekyll build
bundle exec htmlproofer _site --disable-external
```

## Santa Cruz historical data

The repository also contains the planned structure for the Santa Cruz match
history database and its future web application. See
[`santa-cruz-history/README.md`](santa-cruz-history/README.md).
