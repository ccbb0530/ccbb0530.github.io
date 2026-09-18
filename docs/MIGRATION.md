# Peigan Gao's website migration

Personal content was migrated from the original Academic Pages website into
this al-folio template. The earlier website remains in the Git history of
`ccbb0530/ccbb0530.github.io`.

| Original content                  | New location                     | Public URL                   |
| --------------------------------- | -------------------------------- | ---------------------------- |
| Biography and contact information | `_pages/about.md`                | `/`                          |
| Research experiences              | `_pages/experiences.md`          | `/experiences/`              |
| Teaching index                    | `_pages/teaching.md`             | `/teaching/`                 |
| Fall 2026 probability course      | `_teachings/26-fall-teaching.md` | `/teaching/26-fall-teaching` |
| Academic resources                | `_pages/resources.md`            | `/resources/`                |
| Blogs and interests               | `_pages/blogs.md`                | `/blogs/`                    |
| Study links                       | `_pages/links.md`                | `/links/`                    |

The original `/about/` and `/about.html` aliases redirect to the home page.
The template's `/blog/` URL redirects to `/blogs/`.

Resources is now a grouped index of eight subject and project pages. Detailed
descriptions and materials live in `_pages/resources/`, with URLs such as
`/resources/mathematical-analysis/`. The index reads their `resource_category`,
`resource_order`, title, and description, so adding another resource page in
either existing category also adds it to the index. Each detail page links back
to Resources; all original download URLs are preserved.

The Frieren profile image is in `assets/img/Frieren-new.jpg`. The psychology
report and bus-waiting report retain their original `/files/` URLs. Note links
on `notes.gaopg.com` remain external. Resource entries without URLs in the source
are plain text; no missing documents or research results have been invented.

Original al-folio demo pages, posts, courses, projects, news, bibliography, and
sample profile data are preserved in `_template_examples/`, which is excluded
from the public site. Academic Pages demo posts, talks, publications, and its
sample CV were not migrated. The source Blogs page contains only its introductory
sentence, which is preserved.

Site identity and hosting settings are in `_config.yml`; contact icons are in
`_data/socials.yml`. The production URL is `https://gaopg.com`, with an
empty `baseurl`. The template's gem-owned layouts are retained. The local
`assets/css/main.scss` entry point keeps the theme imports and adds the site's
type scale, muted red links, readable small labels, and compact social icons.
It is tracked in `.al-folio-overrides.yml` for future theme upgrades. This
al-folio v1 template uses its prebuilt Tailwind runtime and Bootstrap-compatible
classes; no separate CSS build is needed.
The unused Jupyter plugin is removed from both `Gemfile` and `_config.yml`, and
demo notebooks, sample HTML pages, and RenderCV examples are excluded from builds.

## Local preview

With Ruby and Bundler installed:

```sh
bundle install
bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
```

Open `http://localhost:4000/`. Use the root URL, not `/al-folio/`.
Markdown edits rebuild automatically; restart Jekyll after editing `_config.yml`.
ImageMagick is disabled because the original image can be served directly.

On this Windows workspace, the portable Ruby runtime and dependencies are kept
outside the site repository in `D:\My web\.local-tools`. Start the preview from
the site directory in PowerShell with `./bin/serve.ps1`. The script also works
with Ruby/Bundler installed on PATH. Stop the foreground server with Ctrl+C.

## Publishing

The deployment workflow builds the site with Ruby 3.3 and Node.js, then uploads
the generated site using GitHub's Pages actions. Production deploys run only in
`ccbb0530/ccbb0530.github.io`; the source copy in `ccbb0530/Huanlema` runs the build
without deploying. Both repositories retain their existing Git history.

The original custom domain is preserved in `CNAME`, and GitHub Pages must use
GitHub Actions as its publishing source. Unused template workflows are archived
in `_template_examples/workflows/` so they do not run against this personal site.
