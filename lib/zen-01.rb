(1..100).each do |i|
  if i % 15 == 0
    i = "FizzBuzz"
  else
    i = "Fizz" if i % 3 == 0
    i = "Buzz" if i % 5 == 0
  end
  puts i
end

# convert the fixnum to a sting in base 2, convert the string into an ennumerable,
# ennumerable inject will iterate and store the result of the block into the 1st parameter "sum"
# sum is initialized to 0 and is the value returned

class Integer
  def one_bits
    self.to_s(2).chars.inject(0) {|sum, c| c == "1" ? sum + 1 : sum}
  end
end

# the bigger is the integer passed to the method, the longer will be the string of 0|1
# then the longer it will take to iterate, so more memory and more processing


class Integer
  def three_bits
    sum = 0
    self.to_s(2).each_char {|c| sum += 1 if c == "1" }
    sum
  end
end

