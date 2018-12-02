class WeatherController < ApplicationController

  before_action :set_city

  def index
    start_date = params[:start]
    end_date = params[:end]
    unless @city
      render :json => 'incorrect city code'
      return
    end

    if start_date || end_date
      # Do Nothing
    else
      render :json => 'missing start date or end date'
      return
    end

    weathers = Weather.where(city_id: @city.id)

    if start_date
      weathers = weathers.where("? <= record_time", start_date)
    end
    if end_date
      weathers = weathers.where("? >= record_time", end_date)
    end
    
    render :json => weathers.order(record_time: :desc).pluck(:temperature, :humidity, :record_time )
  end

  private
    def set_city
      @city = City.find_by_city_code(params[:city])
    end
end
