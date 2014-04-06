== Setup

```
git clone git@github.com:aaronzdavis/nufam-rsvp.git

cd nufam-rsvp

brew update && brew upgrade `brew outdated`

rbenv install 2.1.1

rbenv rehash

gem install bundler

gem install rails

bundle install

rake db:setup

rails s
```
