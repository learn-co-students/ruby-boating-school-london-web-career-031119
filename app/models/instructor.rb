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
    pass = BoatingTest.all.find {|test|test.student == student && test.test_name == test_name}
    pass ? pass.test_status = 'passed' : BoatingTest.new(student,name,'passed',self)
    pass
  end

  def fail_student(student,test_name)
    fail = BoatingTest.all.find {|test|test.student == student && test.test_name == test_name}
    fail ? pass.test_status = 'failed' : BoatingTest.new(student,name,'failed',self)
    fail
  end

end
