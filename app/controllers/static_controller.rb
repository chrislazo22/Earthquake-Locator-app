class StaticController < ApplicationController
  def home
  end

  def index
    @earthquakes = EarthquakeLocation.all
  end

  def create
    @earthquakes = EarthquakeLocation.new.csv_parser(params[:start_date],
                                                 params[:end_date])
    redirect_to earthquakes_path
  end
end
