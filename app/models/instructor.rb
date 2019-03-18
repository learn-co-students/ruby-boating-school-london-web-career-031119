require "pry"
class Instructor
  attr_accessor :name
  @@all = []


  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    BoatingTest.all.each { |test| if test.student.first_name == student && test.test_name == test_name
    return  test.test_status = "passed"
    else test.student.first_name = student
      test.test_name = test_name
    return  test.test_status = "passed"
    end  }
  end

  def fail_student(student, test_name)
    BoatingTest.all.each { |test| if test.student.first_name == student && test.test_name == test_name
    return  test.test_status = "failed"
    else test.student.first_name = student
      test.test_name = test_name
    reutn  test.test_status = "failed"
    end  }
  end

end
