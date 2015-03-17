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
    @temperature = getTemperature("CIXX0020")
    @forecast = getForecast("CIXX0020")  
  end

  def newyork
    @temperature = getTemperature("2459115")
    @forecast = getForecast("2459115")  
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
