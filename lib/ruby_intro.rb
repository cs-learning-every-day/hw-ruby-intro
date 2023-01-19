# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  res = 0
  arr.map { |a| res = a + res }
  res
end

def max_2_sum(arr)
  # YOUR CODE HERE
  tmp = arr.sort
  if tmp.length >= 2
    tmp[-1] + tmp[-2]
  elsif tmp.length == 1
    tmp[0]
  else
    0
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end

  hash = {}
  arr.map do |e|
    if hash[e] == nil
      hash[e] = 1
    else
      hash[e] += 1
    end
  end

  res = false

  arr.each do |e1|
    if hash[n - e1] != nil
      if e1 == (n - e1) and hash[e1] < 2
        res = false
      else
        res = true
        break
      end
    end
  end
  return res
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  (s =~ /^[^aeiou\W]/i) != nil
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  m = s.match(/[01]+/)
  if m == nil || m[0].length != s.length
    return false
  end

  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
end
