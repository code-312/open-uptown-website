# open-uptown-website

Temp link: 

https://open-uptown.github.io/open-uptown-website/

## Update events right from Meetup API

Thanks to Jekill this is a static website so as a limitation we can't make calls
to any REST API from our pages. As a workaround here are the instructions for updating
local files under `_data/` using `curl` and [jq](https://stedolan.github.io/jq/) to generate
files that can be easly accessed by [Liquid Templating System](https://jekyllrb.com/docs/datafiles/).

1. Get [jq](https://stedolan.github.io/jq/) and `curl`.
1. Edit `meetup.sh` and set [your own key](https://secure.meetup.com/meetup_api/key/) on the `key=` value.
1. Save the changes and from your terminal run `sh meetup.sh`.
1. This will update the latest 15 events in `_data/meetup/events.json` from [our existing Meetup Group](https://www.meetup.com/openuptown/).
1. Verify running it locally and finally push it to `master` branch to publish it.

## Information for nerds?

This website was built on [Jekyll](https://jekyllrb.com).

## Instructions

Follow these steps to run it locally or go to [this temporaly url](https://edgargigaramirez.github.io/) to check it out.

1. Install [Jekyll](https://jekyllrb.com) environment.
2. Edit `Gemfile` file and comment out the following line since this is required only for *GitHub Pages*:
> gem "github-pages", group: :jekyll_plugins
3. Then:
```bash
$ bundle install
$ bundle exec jekyll build
$ bundle exec jekyll serve
```

Please leave comments and feedback.

Enjoy!
