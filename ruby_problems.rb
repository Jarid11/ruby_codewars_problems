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

#jaden case a given string

class String
  def toJadenCase(str)
    arr = str.split(" ")
    arr.each { |word| word[0] = word[0].upcase }
    arr.join(" ")
  end
end

#return highest and smallest number in a string seperated by a space

def high_and_low(numbers)
  arr = numbers.split(' ')
  newArr = []
  arr.each { |num| newArr.push(num.to_i) }
  "#{newArr.max.to_s} #{newArr.min.to_s}"
end

# given a string that is a number square each number and return the new number

def square_digits num
  arr = num.to_s.split('')
  newArr = []
  arr.each { |n| newArr.push(n.to_i * n.to_i)}
  newArr.join('').to_i
end

def XO(str)
  x = 0
  o = 0
  arr = str.split('').map { |let| 
    x += 1 if let.downcase == "x"
    o += 1 if let.downcase == "o"
  }
  x == o ? true : false
end

# given a string of numbers return the highest possible number as a number

def descending_order(n)
  n.to_s.split('').sort().reverse().join('').to_i
end

# given a number determine if it is a perfect square, return true or false

def is_square(x)
  return false if x < 0 
  Math.sqrt(x) % 1 == 0 ? true : false
end

# given a number return the digital root (if num > 10, split it and sum nums)

def digital_root(n)
  arr = n.to_s.split('')
  if arr.length != 1
   tot = arr.inject(0){|sum,x| sum.to_i + x.to_i }
     while (tot >= 10)
       tot = tot.to_s.split('').inject(0){|sum,x| sum.to_i + x.to_i }
     end
  else 
   return arr[0].to_i
  end
  return tot
 end
 
 # shorter refactor version using recursion
 n < 10 ? n : digital_root(n /10 + n % 10)

#  return the difference of two arrays

def array_diff(a, b)
  [a - b]
end

# create a valid phone number given an array of numbers

def createPhoneNumber(n)
  "(#{n[0]}#{n[1]}#{n[2]}) #{n[3]}#{n[4]}#{n[5]}-#{n[6]}#{n[7]}#{n[8]}#{n[9]}"
end

# given a string return the piglatin version of the string

def pig_it text
  arr = text.split(' ')
  newArr = []
  puts arr.inspect
  arr.each {|word|
    if word != "!" && word != "?"
    word += word[0] + "ay"
    word[0] = ''
    newArr.push(word)
    else 
    word += word[0]
    word[0] = ''
    newArr.push(word)
    end
  }
  newArr.join(" ")
end