class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
         @name = name
         @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        test = BoatingTest.all.find{|test| test.student == student && test.test.name == test_name}
        if test
            test.status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
        test
    end

    def fail_student(student, test_name)
        test = BoatingTest.all.find{|test| test.student == student && test.test.name == test_name}
        if test
            test.status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
        test
    end
end