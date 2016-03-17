=begin
class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  def venue
    @venue
  end
  def date
    @date
  end
end
th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on the #{th.date}"
puts "The second is for a #{cc.venue} event on the #{cc.date}"
=end
class Die
  def initialize(sides)
    @sides = sides
    p sides
    if sides < 1
      raise ArgumentError.new("Must be positive integer!")
    end
  end
  def roll
  1 + rand(sides)
  end
end
die1 = Die.new(0)
die1.roll
