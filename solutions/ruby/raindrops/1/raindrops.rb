=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.

is divisible by 3, add "Pling" to the result.
is divisible by 5, add "Plang" to the result.
is divisible by 7, add "Plong" to the result.
is not divisible by 3, 5, or 7, the result should be the number as a string.
puts “This number is even!” if num % 2 == 0
=end

class Raindrops
  def self.convert(input)
    res = ""
    res << "Pling" if input % 3 == 0
    res << "Plang" if input % 5 == 0
    res << "Plong" if input % 7 == 0

    res.empty? ? input.to_s : res
  end
end