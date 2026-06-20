=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(input)
    raise ArgumentError if input.empty?
    @input = input
  end

  def slices(amount)
    raise ArgumentError unless amount <= @input.size
    @input.chars.each_cons(amount).map(&:join)
  end
end