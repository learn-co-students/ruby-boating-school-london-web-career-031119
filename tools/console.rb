require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Students
s1 = Student.new("Gio")
s2 = Student.new("Patrick")
s3 = Student.new("Fernando")
s4 = Student.new("Diogo")
spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
#

#Instructors
i1 = Instructor.new("Guy")
i2 = Instructor.new("Nico")
i3 = Instructor.new("Vasile")
i4 = Instructor.new("Avi")
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")
#
s1.add_boating_test("new test", "passed", puff)
#

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
