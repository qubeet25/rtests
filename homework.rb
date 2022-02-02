
# (8 kyu ) Difference of Volumes of Cuboids
# ========================================================================================


# In this simple exercise, you will create a program that will take two lists of integers, a and b. 
# Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. 
# You must find the difference of the cuboids' volumes regardless of which is bigger.

# For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20.
#  Therefore, the function should return 8.

# Your function will be tested with pre-made examples as well as random ones.

# If you can, try writing it in one line of code.


def find_difference(a, b)
    return (a.reduce(:*) - b.reduce(:*)).abs
end


# (8 k) Name on billboard
# =================================
# You can print your name on a billboard ad. Find out how much it will cost you. 
# Each letter has a default price of £30, but that can be different if you are given 2 parameters instead of 1.

# You can not use multiplier "*" operator.

# If your name would be Jeong-Ho Aristotelis, ad would cost £600. 20 leters * 30 = 600 (Space counts as a letter).


def billboard(name, price=30)
    s = 0
    p = price
      while p > 0 do 
        s += name.length
        p = p - 1
      end  
    return s
end

# (7k) Get the Middle Character
# ========================================
# You are going to be given a word. Your job is to return the middle character of the word. 
# If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

# #Examples:

# Kata.getMiddle("test") should return "es"

# Kata.getMiddle("testing") should return "t"

# Kata.getMiddle("middle") should return "dd"

# Kata.getMiddle("A") should return "A"
# #Input

# A word (string) of length 0 < str < 1000 (In javascript you may get slightly more than 1000 
# in some test cases due to an error in the test cases). You do not need to test for this. 
# This is only here to tell you that you do not need to worry about your solution timing out.

# #Output

# The middle character(s) of the word represented as a string.


def get_middle(s)
    x = s.length
    y = (x/2).round
    return  x%2 > 0 ? s[y] : s[y-1] + s[y]
end

# (6k)Write Number in Expanded Form
# =========================================
# Write Number in Expanded Form
# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.

# If you liked this kata, check out part 2!!


def expanded_form(num)
    a=[]
    while num > 0 do
      a.push(num%10)
      num=num/10
    end
    return a.map.with_index { |x, i| x * 10**i }.reverse().find_all{ |k| k!=0 }.join(' + ')
end

# (5k)String incrementer
# ========================================
# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

def increment_string(input)
    return /(\d)$/.match(input) ? input.gsub(/(\d+)$/) { |ch| String(ch.to_i + 1).rjust(ch.length, '0')} : (input +'1')
end
  
