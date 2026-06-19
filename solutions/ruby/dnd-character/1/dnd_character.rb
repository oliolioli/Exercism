=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  def self.modifier(score)
    (score - 10) / 2
    .floor
  end

  def initialize
  end

  def constitution
    @hitpoints = 10
  end

  def strength
    18
  end

  def dexterity
    10
  end

  def intelligence
    9
  end
  
  def wisdom
    10
  end

  def charisma
    10
  end

  def hitpoints
    10
  end
  
end
