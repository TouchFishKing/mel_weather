def exponential(time, data)
  # TODO
  sum_of_lny = 0
  sum_of_x2 = 0
  sum_of_x = 0
  sum_of_xlny = 0
  n = 0
  time.each do |x|
    sum_of_lny += Math.log(data[n])
    sum_of_x2 += x**2
    sum_of_x += x
    sum_of_xlny += x * Math.log(data[n])
    n += 1
  end
  a = Math::E**((sum_of_lny * sum_of_x2 - sum_of_x * sum_of_xlny) / (time.size * sum_of_x2 - sum_of_x**2))
  b = (time.size * sum_of_xlny - sum_of_x * sum_of_lny) / (time.size * sum_of_x2 - sum_of_x**2)
  "#{a.round(2)}e^(#{b.round(2)})x"
end
