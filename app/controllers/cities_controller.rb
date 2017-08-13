class CitiesController < ApplicationController

  def paris
    @temperature = getTemperature("Paris")
    @forecast = getForecast("Paris")
  end

  def bangkok
    @temperature = getTemperature("Bangkok")
    @forecast = getForecast("Bangkok") 
  end

  def santiago
    @temperature = getTemperature("santiago-349859")
    @forecast = getForecast("santiago-349859")  
  end

  def newyork
    @temperature = getTemperature("new-york")
    @forecast = getForecast("new-york")  
  end

  def bamako
    @temperature = getTemperature("Bamako")
    @forecast = getForecast("Bamako") 
  end

  private
  def getTemperature(city_code)
    barometer = Barometer.new(city_code)
    weather = barometer.measure
    return weather.current.temperature
  end

  def getForecast(city_code)
    barometer = Barometer.new(city_code)
    weather = barometer.measure
    return weather.tomorrow.high
  end

end
