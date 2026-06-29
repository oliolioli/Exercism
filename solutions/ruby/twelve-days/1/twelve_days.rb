class TwelveDays
  DAYS = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
    "tenth",
    "eleventh",
    "twelfth"
  ]

  GIFTS = [
    "a Partridge in a Pear Tree.",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"
  ]

  def self.song
    result = ""

    (0...12).each do |day|
      result << "On the #{DAYS[day]} day of Christmas my true love gave to me: "

      gifts = GIFTS[0..day].reverse

      if day == 0
        result << gifts.join
      else
        result << gifts[0...-1].join(", ")
        result << ", and "
        result << gifts[-1]
      end

      result << "\n\n" unless day == 11
    end

    result << "\n"
    result
  end
end