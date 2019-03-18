class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(student: self, test_name: test_name, status: status, instructor: instructor)
  end

  def self.find_student(name)
    BoatingTest.all.select {|test| test.student == name}
  end

  def grade_percentage
    my_records = self.class.find_student(self)
    my_status = my_records.map {|o| o.status}
    my_passed = my_status.select {|s| s == "passed"}
    ((my_passed.size / my_status.size.to_f) * 100).round(2)
  end

end
