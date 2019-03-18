class Student
  attr_accessor :first_name, :tests
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @tests = []
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    test = BoatingTest.new(self, test_name, test_status, instructor)
    @tests << test
  end

  def grade_percentage
    tests_passed = 0
    @tests.each do |test|
      tests_passed += 1 if test.test_status == "passed"
    end
    total_tests = @tests.count
    pass_percentage = (tests_passed.to_f / total_tests.to_f) * 100.00
    pass_percentage
  end

  def self.find_student(first_name)
    @@all.find do |student|
      student.first_name == first_name
    end
  end


end
