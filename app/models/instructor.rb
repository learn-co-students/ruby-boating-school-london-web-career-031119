class Instructor
  attr_accessor :name
  @@all = []

  def pass_student(student, test_name)
    student.tests.each do |test|
      if test.test_name == test_name
        test.test_status = "passed"
        return
      else
        student.add_boating_test(test_name, "passed", self)
        return
      end
    end
  end

  def fail_student(student, test_name)
    student.tests.each do |test|
      if test.test_name == test_name
        test.test_status = "failed"
        return
      else
        student.add_boating_test(test_name, "failed", self)
        return
      end
    end
  end

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end


end
