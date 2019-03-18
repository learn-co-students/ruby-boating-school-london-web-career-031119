class Instructor

attr_accessor :name

@@all = []

def self.all
@@all
end

def initialize(name)
@name = name
@@all << self
end

def pass_student(student, test_name)
  count = 0
  BoatingTest.all.each do |test|

    if test.student == student && test.name == test_name
      test.test_status = "failed"
      count += 1
    end
end
      if count == 0
      BoatingTest.new(student, test_name, "failed", self)
end
BoatingTest.all
end



end
