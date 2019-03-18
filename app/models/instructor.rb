class Instructor

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_student_test(student, test_name)
    student_records = BoatingTest.all.select {|t| t.student == student}
    #returns an array of that student's test records
    student_records.find {|r| r.test_name == test_name}
  end

  def pass_student(student, test_name)
    if find_student_test(student, test_name) != nil
      selected = find_student_test(student, test_name)
      selected.status = "passed"
    else
      selected = BoatingTest.new(student: student, test_name: test_name, status: "passed", instructor: self)
    end
    selected
  end

  def fail_student(student, test_name)
    if find_student_test(student, test_name) != nil
      selected = find_student_test(student, test_name)
      selected.status = "failed"
    else
      selected = BoatingTest.new(student: student, test_name: test_name, status: "failed", instructor: self)
    end
    selected
  end

end
