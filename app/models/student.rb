class Student

    attr_accessor :first_name
    #reader
    @@all = []

    def initialize(first_name)
         @first_name = first_name
         @@all << self
    end

    def self.all
        @@all
    end
    def add_boating_test(test_name, test_status, intstructor)
        BoatingTest.new(self, test_name, test_status, intstructor)
    end
    def self.find_student(first_name)
        all.select { |x| x.first_name == first_name}
        # Student.all.find{|i| i.first_name == first_name}
        # @@all
    end

    def tests
        BoardingTest.all.select{|test| test.student == self}
    end

    def grade_percentage
        # BoatingTest.all.map{|x|x.test_status == test_status}
        # STEP 1 - GATHER ALL THE STUDENT NAMES
        # STEP 2 - FIND WHICH THE STUDENT ITSELF HAS PASSED
        # STEP 3 - SIMPLE PERCENTAGE

        # grade = tests.count {|test| test.test_status == "passed"} / test.count.to_f

        students = BoatingTest.all.select{|test| test.student == self }
        
        passed_students = students.select{|test| test.test_status == "passed"}

        passing_percentage = (passed_students.size.to_f/students.size)*100

        passing_percentage.round (2)
    end
end



# s1.add_boating_test() ,.. ,. .)