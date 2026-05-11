module Port
  Port::IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    prefix = ship_identifier.to_s[0,3]

    if prefix == "OIL" || prefix == "GAS"
      :A
    else 
      :B
    end
    
  end
end
