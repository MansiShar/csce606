# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.empty?
     sum = 0
  else
    @sum = arr.reduce(:+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  n = arr.count
  if n == 0
    @sum = 0
  elsif n == 1
    @sum = arr[0]
  else
    @sum = arr.sort[-2] + arr.sort[-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    false
  end
  num = arr.combination(2).find { |x, y| x + y == n }
  return num != nil 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    false
  end
  return s.capitalize.match(/^[BCDFGHJKLMNPQRSTVWXYZ]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # check if its binary
  if s.chars.all? {|x| x =~ /[01]/} && s.to_i(2) % 4 == 0 && !s.empty?
      true
  else
      false
  end
end

# Part 3
class BookInStock
  attr_accessor :isbn, :price
   
  def initialize(isbn,price)
    raise ArgumentError.new("Invalid ISBN, empty string") if isbn.empty?
    @isbn = isbn
    raise ArgumentError.new("Invalid price, negative price") if price <= 0
    @price = price
  end
  
  def price_as_string()
    "$#{"%0.2f" % @price}"
  end
  
end

  
