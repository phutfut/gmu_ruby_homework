# Return a reversed copy of the array
def reverse(an_array)
  # TODO write your code here
  an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  # TODO write your code here
  lowercase = a_string.downcase.delete(' ')
  letterHash = {}

  lowercase.each_char do |chr|
    if(!letterHash.member?(chr))
      letterHash[chr] = lowercase.count chr
    end
  end

  letterHash
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  # TODO write your code here
  total = 0

  an_array.each do |x|
    if(x.is_a? Numeric)
      total = total + x
    end
  end

  total
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  # TODO write your code here
  fizz_array = []

  for count in 1..100
    if (count%3 == 0 && count%5 == 0)
      fizz_array[count] = 'FizzBuzz'
    elsif count%3 == 0
      fizz_array[count] = 'Fizz'
    elsif count%5 == 0
      fizz_array[count] = 'Buzz'
    else
      fizz_array[count] = count
    end
  end

  fizz_array
end

# Uncomment a line to test the function you are developing
# Type "ruby functions.rb" at command line (Konsole) to run the script
#puts reverse([3,6,'dog']).inspect
#puts histogram('The Quick brown fox').inspect
#puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
puts fizzbuzz.join("\n")
