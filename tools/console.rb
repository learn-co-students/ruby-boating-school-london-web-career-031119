require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
require 'pry'

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
Student.find_student("Spongebob")
Instructor.all
Student.all

spongebob.add_boating_test("DVLA", "pending", puff)
spongebob.add_boating_test("DVLA", "passed", puff)
spongebob.add_boating_test("DVLA", "passed", puff)
patrick.add_boating_test("DVLA", "failed", puff)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

