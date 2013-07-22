require 'rubygems'
require 'libnotify'
require 'date'
require 'weather-api'

RAIN_CODES = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 18, 35,
                                                   37, 38, 39, 40, 45, 47]

response = Weather.lookup(922137)

if RAIN_CODES.include?(response.forecasts[0].code)
  Libnotify.show summary: "Hey yo!", body: "It's probably going to rain today."
end