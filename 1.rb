#11
class First
  def create_arr
    puts "First:"
    arr = Array.new(14)
    for i in 0..13
      arr[i] = rand(1..25)
    end
    print arr
    puts
    task(arr)
  end
  def task(arr)

    res_one = Array.new
    for i in 0..6
      res_one[i] = arr[i]
    end
    res = res_one.reverse
    res_one.clear

    for i in 7..13
      res_one[i] = arr[i]
    end
    res_one = res_one.reverse
    for i in 0..6
      res.push(res_one[i])
    end
    puts "Result:"
    print res, "\n"
    return res
  end
end
first = First.new
first.create_arr
