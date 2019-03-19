class Student

    attr_accessor :student_name
    attr_reader :name

    @@all = []

    def initialize (student_name)
        @student_name = student_name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_boating_test (test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        Student.all.select {|x| x.student_name == name}
    end

    # def tests
    #     BoatingTest.all.select {|id| id.student_name == self
    # end

    def grade_percentage
        student_info = BoatingTest.all.select {|id| id.student_name == self } #test results for instance
        student_test = student_info.map {|x| x.test_status}
        student_test_passed = student_test.select {|x| x == "Pass"}
        percentage = student_test_passed.size/student_test.size.to_f * 100
    end

    # def grand_percentage
    #     grade = tests.size {|test| test.status == "passed"} / tests.size.to_f
    #     grade.round(2) * 100
    # end

end