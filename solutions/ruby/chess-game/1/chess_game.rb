module Chess
  Chess::RANKS = 1..8
  Chess::FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    debug Chess::RANKS.include?(rank)
    debug Chess::FILES.include?(file)
    Chess::RANKS.include?(rank) && Chess::FILES.include?(file)
  end

  def self.nickname(first_name, last_name)
    "#{first_name[0,2].upcase}#{last_name[last_name.size-2,last_name.size].upcase}"
  end

  def self.move_message(first_name, last_name, square)
    nickname = nickname(first_name, last_name)
    debug "The value is #{square}."
    debug "Rewritten as #{square[1]} - #{square[0]}."  
    valid_square?(square[1].to_i,square[0]) ? "#{nickname} moved to #{square}" : "#{nickname} attempted to move to #{square}, but that is not a valid square"
  end
end
