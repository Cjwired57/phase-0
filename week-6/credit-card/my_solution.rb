# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number as a string
# Output: boolean true or false
# Steps:
# 1. Remove blanks/spaces in string
# 2. Raise argument error if not 16 digits long
# 3. Convert string to array (might be able to do this first)
# 4. Use each_with_index (odd?) to alter the original target odds
#    odd value and double each
# 5. Sum all untouched and broken apart doubled digits
#    a. Break apart any values greater than 9
#    b. Use inject method to sum all values in array
# 6. Return result (true/false) of the sum % 10 == 0


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

    def initialize(credit_card_number)
      @credit_card_number = credit_card_number
      @card_array = @credit_card_number.to_s.split(//)
      @card_array.map! {|n| n.to_i}

      if @card_array.length != 16
        raise ArgumentError.new("Your credit card value must contain 16 digits.")
      end
    end

    def check_card
      double_array = []
      @card_array.each_with_index do |number, index|
        if index.even?
          double_array << number*2
        else
          double_array << number
        end
      end

      third_array = []
      double_array.each {|x|
        if x.to_s.length > 1
          x.to_s.each_char {|character| third_array << character}
          else
          third_array << x.to_s
        end}

      third_array.map! {|n| n.to_i}

      return third_array.inject(:+) % 10 == 0

    end
end

# Refactored Solution

class CreditCard
  def initialize(credit_card_number)
    @credit_card_number = credit_card_number
    raise ArgumentError.new("Your credit card value must contain 16 digits.") if credit_card_number.to_s.size != 16
  end
  def check_card




=begin
Reflection

What was the most difficult part of this challenge for you and your pair?
We had a very clear idea of what we needed to do after pseudocoding, but weren't familiar with how to split the double digit elements after the doubling step.  But then after researching the .each_char method we were able to target each digit independently and add everything to another array.

What new methods did you find to help you when you refactored?

What concepts or learnings were you able to solidify in this challenge?
It was nice repurposing the .each_with_index method that I had used during the nested data structure challenge.  Because every other digit needed to be doubled, it was easy to target these elements combining that element with .even?.
=end