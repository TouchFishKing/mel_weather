require 'csv'
require_relative 'linear'
require_relative 'logarithmic'
require_relative 'exponential'
require_relative 'polynomial'

require 'byebug'

def regression
  input = ARGV[0]
  type = ARGV[1]
  time = CSV.table(input)[:time]
  data = CSV.table(input)[:datapoint]
  case type
  when 'linear' then linear(time, data)
  when 'polynomial' then polynomial(time, data)
  when 'exponential' then exponential(time, data)
  when 'logarithmic' then logarithmic(time, data)
  end
end

p regression
