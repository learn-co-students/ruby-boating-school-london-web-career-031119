require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# spongebob = Student.new("Spongebob")
# patrick= Student.new("Patrick")
 
# puff= Instructor.new("Ms.Puff")
# krabs= Instructor.new("Mr.Krabs")
 
# # no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
elma = Instructor.new("elma")
john = Instructor.new("john")
spongebob.add_boating_test("DVLA","Pass",krabs)
spongebob.add_boating_test("DVLA","Pass",elma)
spongebob.add_boating_test("DVLA","fail",puff)
spongebob.add_boating_test("DVLA","fail",puff)
patrick.add_boating_test("DVLA","fail",puff)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

