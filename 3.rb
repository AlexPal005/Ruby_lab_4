class Solve
  def start
    puts "Enter n:"
    n = gets.to_f
    if n < 3 || n > 9
      puts " Enter 3 < n < 9!"
    else
      solve(n)
    end
  end
  def create_matrix(n)
    k = 7
    matrix = Array.new
    for i in 0..n-1 do
      matrix[i] = Array.new(n)
    end

    for i in 0..n-1
      matrix[i][i] = 2.to_f
    end

    for i in 0..n-1
      for j in 0..n-1
        if i == j
          next
        end
        matrix[i][j] = (k + 2).to_f
      end
    end

    matrix.each_index { |i| print matrix[i], "\n" }
    return matrix
  end
  def create_vector(n)
    b = Array.new(n)
    for i in 0..n-1
      b[i] = i + 1
    end
    puts "Vector b:"
    print b
    puts
    return b
  end
  def solve(n)
    a = create_matrix (n)
    b = create_vector(n)
    #прямий хід
    #
    k = a[0][0]
      for i in 0..n-1
        a[0][i] = a[0][i] / k
      end
    b[0] = b[0] / k

    count = 1
    while count < n
      k = a[count][count-1]
      for i in count..n-1
        for j in count-1.. n-1
          a[i][j] = a[i][j]- a[count -1 ][j] * k
        end
        b[i] = b[i] - b[count -1 ] * k
      end

      key = a[count][count]
      for m in count..n-1
        a[count][m] = a[count][m] / key
      end
      b[count] = b[count]/key
      count +=1
    end

    #обернений хід

    c = n - 2
    h = n - 1
    count_sec = n - 1
    while count_sec >=0
      while c >= 0
        key = a[c][count_sec]
        while h > 0
          a[c][h] = a[c][h] - a[count_sec][h] * key
          h-=1
        end
        b[c] = b[c]- b[count_sec] * key
        c-=1
        h = n-1
      end
        count_sec -= 1
        c = count_sec - 1
    end
    b.each_index { |i| b[i] = b[i].round(3) }
    puts "Result:"
    b.each_index{|item| print " X", item + 1, " = ", b[item] }
    return b
  end
end
solve = Solve.new
solve.start

