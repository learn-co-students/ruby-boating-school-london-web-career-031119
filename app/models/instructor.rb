class Instructor

  attr_reader :name, :student, :test_name, :test_status

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def pass_student(student,test_name)
    BoatingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        return test.test_status = 'passed'
      end
    end
    BoatingTest.new(student,name,'passed',self)
  end

  def fail_student(student,test_name)
    BoatingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        return test.test_status = 'failed'
      end
    end
    BoatingTest.new(student,name,'failed',self)
  end

end
