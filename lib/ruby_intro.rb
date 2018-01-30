# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  unless arr.empty? # Runs if arr is not empty
  	return arr.reduce(:+)
  else
  	return 0 # Return 0 for empty array
  end

end

def max_2_sum arr
  # YOUR CODE HERE
  unless arr.empty?
  	sum = arr.max
  	arr.delete_at(arr.index(sum)) # Removes the largest integer so max can be used again
  	unless arr.empty? # Adds second value if the array has more than 1 element
  		sum += arr.max
  	end
  	return sum
  else
  	return 0
  end

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
  	return false
  end
  combinations = arr.combination(2).to_a
  combinations.each{|x| return true if x[0]+x[1] == n}
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  first_letter = s[0]
  (/[^aeiou\W]/i =~ first_letter) == nil ? false : true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty? || (/[01]{#{s.length}}/ =~ s) == nil
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
