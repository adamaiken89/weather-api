
# API Path
* https://rails-weather-api.herokuapp.com/weather?city=HK&start=2017-06-23T04:08:05
* Data Format: [temperature, humidity, record_time]


# Server Setup
This is a Rails System.

Ruby Version: `2.5.1`
Rails Version: `5.2.1`
PostgreSQL Version: `9.6.X`

While PostgreSQL is running,
* input your db info in `database.yml` under the directory `config/`

* `gem install bundler`
* `bundle`
* `rails db:create`
* `rails db:migrate`
* `rails db:seed`

# Running Server

While PostgreSQL is running,
* `foreman start`


* Those important files are 
* `app/controllers/weather_controller.rb`
* `jobs/weather_api_job.rb`
