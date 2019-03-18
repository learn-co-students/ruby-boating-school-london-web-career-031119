require 'pry'

class Instructor

  attr_accessor :name, :instructor

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
     # If there is a BoatingTest whose name and student match the values passed in,
     # this method should update the status of that BoatingTest to 'passed'.
     # If there is no matching test, this method should create a test with the student, that boat test name,
     # and the status 'passed'. Either way, it should return the BoatingTest instance.
    matching_test = find_match(student, test_name)
    if matching_test
      matching_test.test_status = "passed"

    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    #  it should try to find a matching BoatingTest and update its status to 'failed'.
    # If it cannot find an existing BoatingTest, it should create one with the name,
    # the matching student, and the status 'failed'.
    matching_test = find_match(student, test_name)
    if matching_test
      matching_test.test_status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

  def find_match(student, test_name)
    # iterate over all BoatingTest created and check if there is a match between
    # the student first_name and the test_name
    BoatingTest.all.find do |test|
      test.student == student && test.test_name == test_name
    end
  end


end
