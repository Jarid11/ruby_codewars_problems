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

# return middle char or chars of string

def get_middle(s)
  s.length.even? ? s[s.length/2 - 1]  + s[s.length/2] : s[s.length/2]
end

# given a string multiple each letter by its index + 1, capitalize the first letter, lower case the rest and seperate each letter with a "-"

def accum(s)
  newArr = []
  i = 1
	s.split('').each { |let|
    let *= i
    i += 1     
    newArr.push(let.downcase)
  }
  newArr.each { |let|
    let[0] = let[0].upcase
  }
  return newArr.join("-")
end

class String
  def toJadenCase(str)
    arr = str.split(" ")
    arr.each { |word| word[0] = word[0].upcase }
    arr.join(" ")
  end
end