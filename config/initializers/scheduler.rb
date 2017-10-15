#
# config/initializers/scheduler.rb
require 'rufus-scheduler'

# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton

# Stupid recurrent task...
#
s.interval('1m') do
  WeatherApiJob.perform_now
  Rails.logger.info "#{Time.now}: Added a Job"
end
