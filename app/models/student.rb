class Student

attr_accessor :first_name

@@all = []

def initialize(first_name)
  @first_name = first_name
self.class.all << self
end

def add_boating_test(name, test_status, instructor)
  BoatingTest.new(self, name, test_status, instructor)
end

def self.find_student(first_name)
@@all.select do |student|
first_name == student.first_name
end
end

def self.grade_percentage(first_name)
  count = 0
student = BoatingTest.all.select {|test| test.student.first_name == first_name}
student.each do |stu|
if stu.test_status == "passed"
  count += 1
end
end
grade = count.to_f / student.length
return grade * 100
end

def self.all
@@all
end

end
#
# student = Student.new("john")
# p student
# p Student.all
