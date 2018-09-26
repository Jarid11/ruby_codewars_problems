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

# given a string return the length of the shortest word 

def find_short(s)
  l = 0
  s.split(' ').each {|word|
    if l == 0 || word.length < l
      l = word.length
    end
  }
  return l
end

# given a string reverse each word in it and keep double spaces if provided

def reverse_words(str)
  newArr = []
  if str.include?("  ")
    str.split("  ").each {|word|
      newArr.push(word.reverse)
    }
    return newArr.join('  ')
  elsif str.include?(" ")
    str.split(" ").each {|word|
      newArr.push(word.reverse)
    }
    return newArr.join(' ')
  else
    return str.reverse
  end
end

# return the index of the unique number(even or odd) in the string

def iq_test(numbers)
  arr = numbers.split(" ")
  e = 0
  o = 0
  i = 0
  arr.each {|num|
    num.to_i.even? ? e += 1 : o += 1
  }
  e > o ?
    arr.map {|n| 
    return i + 1 if arr[i].to_i.odd? 
    i += 1
    }
  :
    arr.map {|n|
    return i + 1 if arr[i].to_i.even? 
    i +=1 
    }
end

# count the amount of sheep and return the amount of sheep that didnt return

def lost_sheep(friday,saturday,total)
  count = friday + saturday
  return total if count.length == 0
  sheep = count.inject { |sum, tot| sum += tot}
  total - sheep
end

#return a reversed string but no not include any symbols or numbers

def reverse_letter(string)
  noNumArr = []
  string.split('').each { |char|
   noNumArr.push(char) if char =~ /[A-Za-z]/
  }
  noNumArr.reverse.join
end

# given a number return a pyramid of arrays based on how big the number is

def pyramid(numbers)
  newArr = []
  return newArr if numbers == 0
  count = 1
  numbers.times {
    innerArrs = []
    count.times {
      innerArrs.push(1)
    }
    newArr.push(innerArrs)
    count += 1
  }
  return newArr
end

# return unique order not including duplicates

def unique_in_order(str)
  return [] if "" == str
  newArr = []
  arr = str.split('') if str =~ /[A-Za-z]/
  i = 0
  (str =~ /[A-Za-z]/) ? (
    arr.each { |char|
      if !newArr.include?(char) || arr[i] != arr[i - 1]
        newArr.push(char)
      end
      i += 1
    })
  : (
    str.each { |char|
      if !newArr.include?(char)
        newArr.push(char)
      end
      i += 1
    })
  newArr
end

# return the number amount of duplicated letters in a string including both cases

def duplicate_count(text)
  return 0 if text == ""
  arr = text.downcase.split('')
  return arr.select{|e| arr.count(e) > 1}.uniq.length
end

# return a string saying who liked the post differently based on how many ppl comment

def likes(names)
  return 'no one likes this' if names == []
  return "#{names[0]} likes this"if names.length == 1
  return "#{names[0]} and #{names[1]} like this"if names.length == 2
  return "#{names[0]}, #{names[1]} and #{names[2]} like this"if names.length == 3
  return "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"if names.length > 3
end

# write a fn that takes in a number, multiple all the digits of the number until the product is one digit.
# return the count of the amount of multiplications it takes

def persistence(n, count = 0)
  return count if n < 10
  i = 0
  arr = n.to_s.split('')
  if arr.length > 1
    tot = arr.map(&:to_i).inject(:*)
    i += 1
    count += 1
    tot.to_i >= 10 ? persistence(tot.to_i, count) : count
  end
end