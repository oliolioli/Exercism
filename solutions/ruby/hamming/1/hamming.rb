=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(input1, input2)
    if input1.size != input2.size
      raise ArgumentError
    elsif input1 == input2
      0
    else
      res = input1.chars.each_with_index.reduce(0) do |acc, (char, index)|
        if char != input2.chars[index]
          acc + 1
        else
          acc
        end
      end
    end
  end
end