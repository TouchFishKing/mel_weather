require 'matrix'

def polynomial(time, data)
  x_data = time.map { |x_i| (0..4).map { |pow| (x_i**pow).to_f } }
  mx = Matrix[*x_data]
  my = Matrix.column_vector(data)
  coefficients = ((mx.t * mx).inv * mx.t * my).transpose.to_a[0]
  equation = ''
  coefficients.to_enum.with_index.reverse_each do |coefficient, index|
    equation += "#{coefficient.round(2)}x^#{index} + "
  end
  equation.gsub('x^0 +', '')
end
