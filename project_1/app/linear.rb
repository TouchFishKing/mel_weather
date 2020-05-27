def linear(time, data)
  sum_of_x = 0
  sum_of_xy = 0
  sum_of_x2 = 0
  sum_of_y = 0
  sum_of_y2 = 0
  n = 0
  time.each do |x|
    sum_of_x += x
    sum_of_xy += x * data[n]
    sum_of_x2 += x * x
    sum_of_y += data[n]
    sum_of_y2 += data[n] * data[n]
    n += 1
  end
  a = (sum_of_y * sum_of_x2 - sum_of_x * sum_of_xy) / (time.length * sum_of_x2 - sum_of_x * sum_of_x)
  b = (time.length * sum_of_xy - sum_of_x * sum_of_y) / (time.length * sum_of_x2 - sum_of_x * sum_of_x)
  "#{b}x + #{a}"
end
