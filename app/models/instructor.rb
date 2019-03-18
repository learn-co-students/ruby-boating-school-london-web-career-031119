class Instructor

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name_string)
    @name = name_string
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    # s_test = BoatingTest.all.select{|t| t.name == test_name && t.student == student && t.instructor == self}.first
    s_test = BoatingTest.all.select{|t| t.name == test_name && t.student == student}.first
    if !!s_test
      s_test.status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    # s_test = BoatingTest.all.select{|t| t.name == test_name && t.student == student && t.instructor == self}.first
    s_test = BoatingTest.all.select{|t| t.name == test_name && t.student == student}.first
    if !!s_test
      s_test.status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end
