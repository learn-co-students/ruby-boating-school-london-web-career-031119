class Instructor

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student (student, test_name)
       test =  BoatingTest.all.find {|test| test.student_name == student && test.test_name == test_name}
        if test
            test.status = "pass"
        else
            BoatingTest.new(student, test_name, "pass", self) 
        end
        test
    end
    
    def fail_student (student, test_name)
        test =  BoatingTest.all.find {|test| test.student_name == student && test.test_name == test_name}
         if test
             test.status = "fail"
         else
             BoatingTest.new(student, test_name, "fail", self) 
         end
         test
     end

end
