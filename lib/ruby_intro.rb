# frozen_string_literal: true

# Part 1

def sum(arr)
  
  # use array#sum
  arr.sum

end

def max_2_sum(arr)
  
  if arr.size == 0 # empty array
    return 0
  elsif arr.size == 1 # only one element in array
    return arr.pop()
  else # the common cases
    arr_sorted = arr.sort
    max = arr_sorted.pop()
    max_sec = arr_sorted.pop()
    res = max + max_sec
    return res
  end

end

def sum_to_n?(arr, number)
  
  # like "two sum" in leetCode
  hash = Hash.new
  arr.each_with_index do |value, index|
    return true if hash[number - value]
    hash[value] = index
  end

  return false

end

# Part 2

def hello(name)

  res = "Hello, " + name
  return res

end

def starts_with_consonant?(string)

  # regex
  res = string =~ /\A(?=[^aeiou])(?=[a-z])/i
  return  res

end

def binary_multiple_of_4?(string)
  
  # regex
  if string == "0"
    return true
  elsif /^[01]*(00)$/.match(string)
    return true
  else
    return false
  end
  
end

# Part 3

# Object representing a book
class BookInStock

  # use attr_accessor to set up the attributes
  attr_accessor :isbn
	attr_accessor :price
	
  # constructor
  def initialize(isbn, price)
    
    if isbn.size == 0 or price <= 0
      raise ArgumentError
    end
		@isbn = isbn
		@price = price
		
  end
	
  # the price_as_string method
	def price_as_string
	  
    format("$%.2f", @price) # use format
	  
	end 
end