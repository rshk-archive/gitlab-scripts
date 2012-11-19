#!/bin/sh
cd /home/gitlab/gitlab/
sudo -u gitlab bundle exec rake gitlab:import:repos RAILS_ENV=production
cd -

