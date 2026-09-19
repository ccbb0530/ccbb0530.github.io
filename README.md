# Peigan Gao's academic website

Personal website built with [al-folio](https://github.com/alshedivat/al-folio).

- Website: <https://gaopg.com/>
- GitHub Pages address: <https://ccbb0530.github.io/> (redirects to the custom domain)
- Publishing repository: `ccbb0530/ccbb0530.github.io`, branch `master`
- Template and source copy: `ccbb0530/Huanlema`, branch `main`

## Edit content

Main pages live in `_pages/`. The Resources index reads the individual topic
pages in `_pages/resources/`. Teaching materials live in `_teachings/`.
Site settings are in `_config.yml`, and typography is in `assets/css/main.scss`.
The MATH3007.01 calendar is in `_data/math3007_2026.yml`, with weekly homework and answer links in `_data/math3007_homework_2026.yml`; see
[the course schedule guide](docs/MATH3007-SCHEDULE.md) for dates and material links.

See [the content migration guide](docs/MIGRATION.md) and
[typography notes](docs/DESIGN.md) for details.

## Preview locally

With Ruby 3.3 and Node.js installed:

```sh
bundle install
bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
```

In the prepared Windows workspace, run `./bin/serve.ps1` from the site directory.
Open <http://localhost:4000/>. Restart the server after changing `_config.yml`.

## Publish

Push changes to `master` in `ccbb0530/ccbb0530.github.io`. The GitHub Actions
workflow builds the site and deploys it to GitHub Pages. Pages must use
**GitHub Actions** as its publishing source. Keep `CNAME` set to `gaopg.com`.

The same workflow builds changes in `Huanlema`, but publishing is restricted to
the main website repository. The two repositories are separate source copies;
pushing only to `Huanlema` does not update the public website.

Unused starter content and automations are preserved in `_template_examples/`
and excluded from the published site. Previous versions of the original website
remain available in the publishing repository's Git history.
