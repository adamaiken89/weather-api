class WeatherApiJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

    weather_list = Array.new

    City.all.each do |city|
      weather_json = Openweather2.get_weather(city: city.city_name)
      weather_list << Weather.new(
        temperature: weather_json.temperature,
        humidity: weather_json.humidity,
        record_time: Time.now,
        city_id: city.id,
      )
    end

    Weather.import weather_list

  end
end
