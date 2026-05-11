class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    return @speed * 221 * get_success_rate
  end

  def get_success_rate
    if @speed == 10 then success_rate = 0.77
    elsif @speed == 9 then success_rate = 0.8
    elsif @speed >=5 && @speed <= 8 then success_rate = 0.9  
    elsif @speed >=1 && @speed <= 4 then success_rate = 1
    end

    return success_rate
  end
  
  def working_items_per_minute
    return (production_rate_per_hour / 60).floor
  end
end
