require 'pry'

# should initialize with first_name
# Student.all should return all of the student instances

class Student

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(new_name)
    Student.all.find {|x| x.name == new_name}
  end

  def grade_percentage
    all_tests = BoatingTest.all.select{|x| x.student == self}
    passed_tests = all_tests.select{|x1| x1.test_status == "passed"}
    grade = passed_tests.length / all_tests.length.to_f
    grde.round(2)
    # binding.pry
    # puts 'done'
  end

# #Guy solution
#
# def tests
#   BoatingTest.all.select{|test| text.student == self}
# end

def grade_percentage
  grade = tests.count {|test| test.status == "passed"} / test.count.to_f
  # binding.pry
  # puts 'done'
end

end
