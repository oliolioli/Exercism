=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(input)
    #Strings of length 1 or less are not valid. Spaces are allowed in the input, 
    # but they should be stripped before checking. All other non-digit characters
    # are disallowed.
    input = input.delete(" \t\n")
    
    return false unless input.size > 1 
    return false unless input.match?(/\A\d+\z/)

    # avoiding manual counters through rubys enumerable methods
    sum = input.reverse.chars.each_with_index.sum do |digit, index|
      value = digit.to_i

      if index.odd?
        value *= 2
        value -= 9 if value > 9
      end

      value
    end

    sum % 10 == 0
  end 
end

