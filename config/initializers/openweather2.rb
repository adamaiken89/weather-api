require "openweather2"

Openweather2.configure do |config|
  config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
  config.apikey =  ENV.fetch("OPEN_WEATHER_ID", '63ba861af96b1bdd5aef32e394c98000')
end
