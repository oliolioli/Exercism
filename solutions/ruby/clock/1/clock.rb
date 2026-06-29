class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    hours_from_minutes, @minute = minute.divmod(60)
    
    @hour = (hour + hours_from_minutes) % 24

    debug "Initialized clock: #{sprintf("%02d", @hour)}:#{sprintf("%02d", @minute)}"
  end
  
  def +(clock)
    Clock.new(hour: self.hour + clock.hour, minute: self.minute + clock.minute)
  end

  def -(clock)
    Clock.new(hour: self.hour - clock.hour, minute: self.minute - clock.minute)
  end

  def ==(clock)
    return (self.hour == clock.hour) && (self.minute == clock.minute)
  end
  
  def to_s
    return "#{sprintf("%02d", @hour)}:#{sprintf("%02d", @minute)}"
  end
end
