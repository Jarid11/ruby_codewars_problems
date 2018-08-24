# given a function that takes in a number turn the number into a string

def numberToString(num)
  num.to_s
end

# debug the issue with this function so the numbers can be multiplied

def multiply(a, b)
  a * b
end

# repeats string n number of times 

def repeat_str n, s
  s * n
end

# debug function problem

def greet(name)
  name == "Johnny" ? "Hello, my love!" : "Hello, #{name}!"
end

# return smallest number in array

def find_smallest_int(arr)
  lowNum = nil
  arr.each { |num|
    if num < lowNum.to_i ||lowNum.to_i == 0
     lowNum = num
    end
  }
  return lowNum
end

# return count of sheep

def countSheeps arr 
  count = 0
  arr.each { |sheep|
    sheep == true && count += 1
  }
  count
end