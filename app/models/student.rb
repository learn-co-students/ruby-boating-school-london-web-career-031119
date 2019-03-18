
class Student

    attr_accessor :name ,:grade_percentage
    @@all = []
def initialize(name)
    @name = name 
    @@all << self
end

def self.all
    @@all 
end

def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
end

def self.find_student(first_name)
    all.detect { |x| x.name == first_name} 
end

def grade_percentage
    student_info = BoatingTest.all.select { |id| id.student == self}  #>  
    student_test = student_info.map { |x| x.test_status} #> and array of passes and fails 
    total_tests = student_test.count #> 4
    tests_passed = student_test.select { |x| x == "Pass"}.count #> you have 2
    percentage_passed = tests_passed/total_tests.to_f * 100
    
end

end