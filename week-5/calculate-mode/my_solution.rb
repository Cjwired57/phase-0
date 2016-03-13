# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Shaun Sweet ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers of strings
# What is the output? (i.e. What should the code return?) A new array of most frequent values
# What are the steps needed to solve the problem?
#Step 1: convert array into a hash, where the keys are the elements of the array and the values are the frequency of that element in the array
#Step 2: Target highest value (frequency) with max_by method
#Convert it back to an array and ouput keys with highest value

# 1. Initial Solution
def mode(array)
frequency_hash = array.inject(Hash.new(0)) do |k,v| k[v] += 1
  k end
  mode = frequency_hash.max_by {|k,v| v}[1]
  final_array = []
  frequency_hash.each_pair do |k,v|
    if v == mode
      final_array << k
    end
  end
  p final_array
end
p mode([1,3,3,4,4,5])

# 3. Refactored Solution
def mode(array)
frequency_hash = array.inject(Hash.new(0)) {|k,v| k[v] += 1; k}
  mode = frequency_hash.max_by {|k,v| v}[1]
  final_array = []
    frequency_hash.each_pair do |k,v|
      if v == mode
        final_array << k
      end
    end
  p final_array
end
p mode([1,3,3,4,4,5])


=begin
Reflection

Which data structure did you and your pair decide to implement and why?
We decided to start with the input array, and turn it into a hash using the .inject enumerable method which took the elements of the arrays as keys and assigned values based on the elements' frequencies.  Then we took the highest values from the hash and used addend to add these values to a new array for the output.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
I'd say that we met with about the same success, outlining the steps was pretty easy but we were not sure how to implement all of them immediately.

What issues/successes did you run into when translating your pseudocode to code?
First we weren't sure how to iterate over the array elements to create hash values equivalent to the element's frequency, but having used .inject before we knew that we wanted to use this method but not sure exactly what the syntax of the code block would look like.  When we eventually succeeded in creating this hash, we then knew that we wanted to use the .max_by method to get the highest values (frequencies) of the hash pairs.  However, this only worked when there was one clear highest value, otherwise it would only return the first highest frequency value and ignore any other ones.  We finally were able to use the .each_pair method to target each hash pair and print all values that were tied for highest frequency...then by addending the key of these pairs to a new array, we had the output that we needed.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .inject to iterate over the content because it was a tool that I had previously been messing around with for much more simple methods (i.e. getting the sum of an array).  Honestly, the syntax for it was complicated when we were creating the new hash within the same line.  If we had instead started by creating a hash wiht Hash.new(0) and then, just used .each do |i| and then hash[i]+=1 this would have been a bit easier to wrap our heads around.

=end