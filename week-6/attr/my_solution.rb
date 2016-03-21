#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

class NameData

  attr_reader :name

  def initialize
    @name = "Chris"
  end
end

class Greetings
  def initialize
   @name = NameData.new
  end

  def hello
    puts "Hello #{@name.name}! How wonderful to see you today!"
  end
end

greeting = Greetings.new
p greeting.hello


=begin
Release 1 Reflection

What are these methods doing?
There are several methods at work here...First the print info message prints the instance variables for age, name and occupation.  Then a series of methods very simply act as place holders for these values, like what_is_age, what_is_name and what_is_occupation.  For each of these there is a corresponding method that allows you to change/update these variables (change_my_age, change_my_name, and change_my_occupation).

How are they modifying or returning the value of instance variables?
They are reseting the corresponding instance variables to the new argument of the message (i.e. new_age, new_name, new_occupation).

Release 2 Reflection

What changed between the last release and this release?
Instead of defining a method what_is_age, an attribute reader was added on line 5.

What was replaced?
Again, the method what_is_age was replaced by the attribute reader :age.

Is this code simpler than the last?
Yes it compiles three lines of code into one very short line, much easier to read...makes things less complicated.

Release 3 Reflection:

What changed between the last release and this release?
Attr_writer :age was added to line 6.

What was replaced?
The attribute writer method replaced the original method change_my_age.

Is this code simpler than the last?
Yes, again much simpler and easier to read.

Release 6 Reflection:

What is a reader method?
A reader just returns a value outside of the class, so that instead of writing and calling an extra method that has you return something like age, this will do that for you.

What is a writer method?
A writer lets you change the value of a variable outside of a class, but it doesn't return it/it is not readable.

What do the attr methods do for you?
They basically act as substitutions for longer methods that let you return or change variables outside of the class in which they are initiated.

Should you always use an accessor to cover your bases?  Why or why not?
Not necessarily, it's not always the safest to allow other methods and classes to have access to variables from others.

What is confusing to you about these methods?
I understand the theory and can see what they substitute in the previous releases, I guess it will be helpful to see them in other situations as well just to solidify what I've learned here.
=end
