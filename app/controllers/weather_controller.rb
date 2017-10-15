class WeatherController < ApplicationController
  def index
    @weathers = Weather.includes(:city).where(city_name: params[:city_name]).where("? >= timestamp AND ? <= timestamp", params[:start], params[:end]).group(:city_code).order(timestamp: :desc)
    render :json => {
      result: @weathers.pluck(:tempatures, :humidity, :timestamp )
    }
  end
end
