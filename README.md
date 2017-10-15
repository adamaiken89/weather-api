# README

This is a Rails System.

Ruby Version: `2.4.2`
Rails Version: `5.1.4`
PosgreSQL Version: `9.6.X`


Server Setup

While the postgreSQL is running,
* input your db info in `database.yml` under the directory `config/`

* `gem install bundler`
* `bundle`
* `rails db:setup`
* `rails db:migrate`
* `rails db:seed`

Running Server

While the postgreSQL is running,
* `foreman start`


* Those major files are 
* `app/controllers/weather_controller.rb`
* `jobs/weather_api_job.rb`