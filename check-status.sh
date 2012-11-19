#!/bin/sh
cd /home/gitlab/gitlab/
sudo -u gitlab bundle exec rake gitlab:app:status RAILS_ENV=production
cd -
