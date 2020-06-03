def exponential(time, data)
  # TODO
  sum_of_x2y = 0
  sum_of_ylny = 0
  sum_of_xy = 0
  sum_of_xylny = 0
  sum_of_y = 0
  n = 0
  time.each do |x|
    sum_of_x2y += x * x * data[n]
    sum_of_ylny += data[n] * Math.log(data[n])
    sum_of_xy += x * data[n]
    sum_of_xylny += x * data[n] * Math.log(data[n])
    sum_of_y += data[n]
  end
  a = (sum_of_x2y * sum_of_ylny - sum_of_xy * sum_of_xylny) / (sum_of_y * sum_of_x2y - sum_of_xy * sum_of_xy)
  b = (sum_of_y * sum_of_xylny - sum_of_xy * sum_of_ylny) / (sum_of_y * sum_of_x2y - sum_of_xy * sum_of_xy)
  "#{a}e^(#{b})x"
end
