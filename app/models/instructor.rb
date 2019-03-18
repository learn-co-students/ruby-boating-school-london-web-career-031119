class Instructor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    BoatingTest.all.each do |boat_test|
      if boat_test.test_name == test_name && boat_test.student == student
        return boat_test.test_status = "passed"
      else
        return BoatingTest.new(student, test_name, "passed", self)
      end
    end
  end

  def fail_student(student)
    BoatingTest.all.each do |boat_test|
      if boat_test.test_name == test_name && boat_test.student == student
        return boat_test.test_status = "failed"
      else
        return BoatingTest.new(student, test_name, "failed", self)
      end
    end
  end
end
