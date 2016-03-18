# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    raise ArgumentError if card_number.to_s.size != 16
  end

  def check_card

    card_string = @card_number.to_s.split('')

    card_string.map! {|number| number.to_i }


    double_odd_digit_array = []
    card_string.each_with_index do |number, index|
      if index.even?
        double_odd_digit_array << number * 2
      else
        double_odd_digit_array << number
      end
    end

    check_sum_array = double_odd_digit_array.join.chars

    check_sum_array.map! {|number| number.to_i }

    check_sum_array.inject(:+) % 10 == 0
  end

end
card1 = CreditCard.new(1234431241234123)
p card1.check_card



# Refactored Solution








# Reflection