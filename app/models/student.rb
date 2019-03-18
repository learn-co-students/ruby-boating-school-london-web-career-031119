class Student
  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(course, status, teacher)
    BoatingTest.new(self, course, status, teacher)
  end

  def grade_percentage
    tests = BoatingTest.all.select { |boat_test| boat_test.student == self }
    tests_passed = tests.select { |boat_test| boat_test.status == "passed" }
    tests_passed.length / tests.length.to_f * 100
  end

  def self.find_student(name)
    Student.all.select { |student| student.first_name == name }
  end

  def self.all
    @@all
  end
end
