class Two
  def create_matrix
    matrix = Array.new
    for i in 0..7 do
      matrix[i] = Array.new(8)
    end
    matrix.each_index do |i|
      matrix[i].each_index{ |j|
        matrix[i][j] = rand(10)}
    end
    task(matrix)
  end
  def task(matrix)
    number = 7
    matrix.each_index { |i| print matrix[i], "\n" }
    matrix.each_index do |i|
      matrix[i].each_index{ |j|
        matrix[i][j] = matrix[i][j] * number}
    end
    print "Number =", number
    puts " res ->"
    matrix.each_index { |i| print matrix[i], "\n" }
    return matrix
  end
end
two = Two.new
two.create_matrix
