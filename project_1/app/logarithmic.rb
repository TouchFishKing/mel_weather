def logarithmic(time, data)
  sum_of_ylnx = 0
  sum_of_lnx = 0
  sum_of_y = 0
  sum_of_lnx2 = 0
  n = 0
  time.each do |x|
    sum_of_ylnx += Math.log(x) * data[n]
    sum_of_y += data[n]
    sum_of_lnx += Math.log(x)
    sum_of_lnx2 += Math.log(x) * Math.log(x)
    n += 1
  end
  b = (time.length * sum_of_ylnx - sum_of_y * sum_of_lnx) / (time.length * sum_of_lnx2 - sum_of_lnx * sum_of_lnx)
  a = (sum_of_y - b * sum_of_lnx) / time.length
  p "#{b}ln(x) + #{a}"
end
