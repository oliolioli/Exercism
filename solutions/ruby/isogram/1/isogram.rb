=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  def self.isogram?(input)
    seen = {}

    input.downcase.each_char do |char|
      next if (char == "-" || char == " ")

      if seen[char] == true
        return false
      else
        seen[char] = true
      end
    end
    
    return true
  end
end