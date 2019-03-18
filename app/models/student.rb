# require_relative './boatingtest.rb'
# require_relative './instructor.rb'


class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    @@all.find { |student| student.first_name == first_name}
    # => #<Student:0x00007f8b0aa8d120 @first_name="Patrick">
  end

  def grade_percentage
    # should return the percentage of tests that the student has passed,
    # a Float (so if a student has passed 3 / 9 tests that they've taken,
    # this method should return the Float 33.33

    my_tests = BoatingTest.all.select { |test| test.student = self }

    passed_tests = BoatingTest.all.select { |test| test.test_status == "passed" }

    result = passed_tests.length / my_tests.length.to_f * 100
    result

  end

end
