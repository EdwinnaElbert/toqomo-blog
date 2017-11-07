# Toqomo test task

* Ruby version -- 2.4.1

# REQUIREMENTS

* PostgreSQL 9.0 or later (with headers, -dev packages, etc).

* Qt >= 4.8 for Capybara-webkit, Debian & Ubuntu users do:

* sudo apt-get update && sudo apt-get install qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x

* you may need to install gstreamer also (sudo apt-get install gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x)

# DATABASE CREATION

* rake db:create

* rake db:migrate

# OTHER

* Don't forget to run rake:secret in dev and place the key to secrets.yml

* Bundle install would also be useful

* Run rspec spec for testing
