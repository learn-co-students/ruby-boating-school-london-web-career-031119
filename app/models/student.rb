class Student

  attr_accessor
  attr_reader :first_name

  @@all = []

  def initialize(first_name_string)
    @first_name = first_name_string
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(student)
    @@all.select{|e| e.first_name == student }.first
  end

  def add_boating_test(boating_test_name_String, boating_test_status_String, instructor_Object)
    BoatingTest.new(self, boating_test_name_String, boating_test_status_String, instructor_Object)
  end

  def grade_percentage
    tests = BoatingTest.all.select{|t| t.student == self}
    tests_passed = tests.select{|t| t.status == "passed"}
    tests_passed.length / tests.length.to_f * 100
  end

end
