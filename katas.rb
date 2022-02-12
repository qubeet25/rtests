require_relative '8.2class.rb'

class Maria
    # 8.1 kata
    # Find numbers which are divisible by given number
    # Complete the function which takes two arguments and returns all numbers which are divisible by the given divisor. 
    # First argument is an array of numbers and the second is the divisor.

    def divisible_by(numbers, divisor)
       return numbers.select { |number| number % divisor == 0 }
    end

    # 8.2 kata
    # This series of katas will introduce you to basics of doing geometry with computers.
    # Write the function circleArea/CircleArea which takes in a Circle object and calculates the area of that circle.
    # The Circle class can be seen on file 8.2class:
    

    def circle_area(circle)
        Math::PI*circle.radius**2
    end

# 7 kata, task is to write a function which returns the sum of following series upto nth term(parameter).
    # Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

# Rules:
    # You need to round the answer to 2 decimal places and return it as String.
    # If the given value is 0 then it should return 0.00
    # You will only be given Natural Numbers as arguments.
# Examples:(Input --> Output)
    # 1 --> 1 --> "1.00"
    # 2 --> 1 + 1/4 --> "1.25"
    # 5 --> 1 + 1/4 + 1/7 + 1/10 + 1/13 --> "1.57"
    def series_sum(n)
        sum = 0.00
        i = 1
        while i < n+1
          sum = sum + 1/(1+3*(i-1)).to_f
          i = i + 1
        end  
        '%.2f' % sum
    end


# 6 kata A ﬂoating-point number can be represented as mantissa * radix ^ exponent (^ is raising radix to power exponent). In this kata we will be given a positive float aNumber and we want to decompose it into a positive integer mantissa composed of a given number of digits (called digitsNumber) and of an exponent.
# Example:
    # aNumber = 0.06
# If the number of digits asked for the mantissa is digitsNumber = 10 one can write
# aNumber : 6000000000 * 10 ^ -11
# the exponent in this example est -11.
# Task
    # The function mantExp(aNumber, digitsNumber) will return aNumber in the form of a string: "mantissaPexponent" (concatenation of "mantissa", "P", "exponent"). So:
# Examples:
    # mantExp(0.06, 10) returns "6000000000P-11".
    # mantExp(72.0, 12)   returns "720000000000P-10"
    # mantExp(1.0, 5) returns "10000P-4"
    # mantExp(123456.0, 4) returns "1234P2"
# Notes:
    # In some languages aNumber could be given in the form of a string:
    # mantExp("0.06", 10) returns "6000000000P-11".
    # 1 <= digitsNumber <= 15
    # 0 < aNumber < 5.0 ^ 128

    def mant_exp(a_number, digits_number)
        i = 0
        a_number = a_number.to_f
        while a_number.to_i.to_s.length < digits_number
          a_number = a_number*10
          i-=1
        end
        
        while a_number.to_i.to_s.length > digits_number
          a_number = a_number/10
          i+=1
        end
        "#{a_number.to_i}P#{i}"
    end

# 5 kata
# https://www.codewars.com/kata/5868b2de442e3fb2bb000119/train/ruby

def closest(strng)
    if strng.empty?
      return []
    end 
    numbers = strng.split
    weigth = weigth(numbers)
    distances = find_dist(weigth)
    min_distance = find_min(distances)
    if find_min(distances).length == 1
      return form_answer(min_distance, numbers)
    elsif smallest_weigth(min_distance, weigth).length == 1
      return form_answer(smallest_weigth(min_distance, weigth), numbers)
    else
      form_answer(smallest_index(smallest_weigth(min_distance, weigth)),numbers) 
    end  
  end
  
  def weigth(numbers)
    weigth = []
    for i in 0..numbers.length-1
      sum = 0
      numbers[i].chars.each{ |number| sum = sum + number.to_i }
      weigth.push(sum) 
    end 
    weigth 
  end  
  
  def find_dist(array)
    dist = {}
    for i in 0..array.length-1
      for j in i+1..array.length-1
        dist[[i,j]] = (array[i]-array[j]).abs
      end  
    end 
    dist 
  end  
  
  def find_min(hash)
    min = hash.values.min
    hash.select{ |key, value| value == min }
  end  
  
  def form_answer(hash, numbers)
    answer = []
    for i in 0..1
      index = hash.keys.first[i]
      answer.push([weigth(numbers)[index], index, numbers[index].to_i])
    end
    answer.sort_by{ |arr| arr[0] }
  end  
  
  def smallest_weigth(hash, weigth)
    weigths = []
    hash.keys.each{ |key| weigths.push(weigth[key[0]] + weigth[key[1]]) }
    hash.select{ |key, value| weigth[key[0]] + weigth[key[1]] == weigths.min }
  end  
  
  def smallest_index(hash)
    index = []
    hash.keys.each{ |key| index.push(key[0]) }
    hash.select{ |key, value| key[0] == index.min }
  end 
end
