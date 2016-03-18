# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Aarthi Gurusami.
# I spent [5] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: boolean statement
# Steps:
# Itialize the class with an input integer
# Raise an ArgumentError IF the number of digits in the input integer is not equal to 16
# Create a new method double
# Access the second last (-2) digit
# Iterate in steps of 2 until we hit the first digit (0)
# Multiply every other digit by two
# Create a new method sum_all
# Access the second last (-1) digit
# Iterate through each number and make sure that it's not a double digit
# IF digits in the number are greater than 1, seperate the digits and sum them
# Sum all numbers
# IF the remainder of the sum divided by 10 is equal to 0, check_card method should retun true
# ELSE check_card method should retun false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  def initialize(credit_card_number)
    @credit_card_number = credit_card_number.to_s.split("")
    @credit_card_number.map! do |number|
      number = number.to_i
    end
    if @credit_card_number.length != 16
       raise ArgumentError.new("Your credit card number must be equal to 16")
    end
  end

  def double
    @odd_numbers = []
    step = 2
    @credit_card_number.each_with_index do |number,index|
      if index % step == 0
        @odd_numbers << number*2
      end
    end
    @odd_numbers
  end

  def sum_all
    @sum_of_numbers = 0
    step = 2
    @credit_card_number.each_with_index do |number,index|
      if index % step == 1
        @sum_of_numbers += number
      end
    end
    @odd_numbers.each do |number|
      if number > 9
        odd_number_array = number.to_s.split("")
        another_sum =0
        odd_number_array.map! do |digits|
          digits = digits.to_i
          another_sum += digits
        end
        @sum_of_numbers += another_sum
      else
        @sum_of_numbers += number
      end
    end
    @sum_of_numbers
  end

  def check_card?
    if @sum_of_numbers % 10 == 0
      true
    else
      false
    end
  end

end

credit_card_number = CreditCard.new(1234562343421231)
p credit_card_number.double
p credit_card_number.sum_all
p credit_card_number.check_card?

=end

# Refactored Solution
class CreditCard
  
  def initialize(credit_card_number)
    @credit_card_number = credit_card_number.to_s.split("")
    @credit_card_number.map! {|number| number = number.to_i}
    if @credit_card_number.length != 16
      raise ArgumentError.new("Your credit card number must be equal to 16")
    end
  end

  def double
    @even_index = []
    @credit_card_number.each_with_index do |number,index| 
      if index.even?
         @even_index << number * 2
      end
    end
    @even_index
  end

  def sum_all  
    @sum_of_numbers = 0
    @credit_card_number.each_with_index do |number,index|
      if index.odd? 
         @sum_of_numbers += number
      end
    end
    
    @even_index.each do |number|
      if number > 9
        even_index_array = number.to_s.split("")
        another_sum = 0
        even_index_array.map! do |digits|
          digits = digits.to_i
          another_sum += digits
        end
        @sum_of_numbers += another_sum
      else
        @sum_of_numbers += number
      end
    end
    @sum_of_numbers
  end

  def check_card
    double
  	sum_all
    if @sum_of_numbers%10 == 0
     true
    else
     false
    end
  end

end

my_credit_card_number = CreditCard.new(1234562343421231)
p my_credit_card_number.check_card

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# The most difficult part was refactoring. We couldn't find good ways to shorten the code. 
# What new methods did you find to help you when you refactored?
# We found even?/odd? to replace a block of code with step variable, then we also found each_slice
# that could be used instead of each_with_index.
# What concepts or learnings were you able to solidify in this challenge?
# We solidified iteration through arrays, conversion from integers to strings, splitting artungs into arrays,
# calling methods in other class methods. 