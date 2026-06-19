=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(input)
    @matrix = input
              .split("\n")
              .map { |line| line.split(" ") }
  end

  def row(r)
    @matrix[r-1].map(&:to_i)
  end

  def column(c)
    @matrix.map { |row| row[c-1].to_i }
  end
end