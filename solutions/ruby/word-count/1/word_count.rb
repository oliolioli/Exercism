=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  attr_reader :word_count
  
  def initialize(input)
    @word_count = Hash.new(0)

    input = input
            .gsub(",", " ")
            .gsub(/^\s+/, '')
            .gsub(/(?<!\w)'|'(?!\w)/, '')
            .gsub(/[!&@$%^:.]/, ' ')
            .gsub("\" ", "")
            .downcase

    input.split(/[,\s]+/).each do |i|
      @word_count[i] += 1
    end
  end
end
