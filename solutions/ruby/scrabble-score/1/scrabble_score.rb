=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end


class Scrabble
  def initialize(input)
    @input = input
  end

  def score
    sum = 0
    
    @input.upcase.each_char do |char|
      case char 
      when /[AEIOULNRST]/
        sum += 1
      when /[DG]/
        sum += 2
      when /[BCMP]/
        sum += 3
      when /[FHVWY]/
        sum += 4
      when /[K]/
        sum += 5
      when /[JX]/
        sum += 8
      when /[QZ]/
        sum += 10
      end
    end
    return sum
  end
end