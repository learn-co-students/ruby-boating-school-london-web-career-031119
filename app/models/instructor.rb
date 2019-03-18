class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(student, test_name)
        matching_test = find_test(student, test_name)

        if matching_test
            matching_test.status = 'passed'
        else
            BoatingTest.new(student, test_name, 'passed', self)
        end
    end

    def fail_student(student, test_name)
        matching_test = find_test(student, test_name)

        if matching_test
            matching_test.status = 'failed'
        else
            BoatingTest.new(student, test_name, 'failed', self)
        end
    end

    def find_test(student, test_name)
        BoatingTest.all.find do |test|
            test.student == student && test.name == test_name
        end
    end

end
