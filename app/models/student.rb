class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(first_name)
        Student.all.find { |student| student.first_name.downcase == first_name.downcase }
    end

    def tests
        BoatingTest.all.select { |test| test.student == self }
    end

    def grade_percentage
        my_tests = 0
        my_passed_tests = 0

        BoatingTest.all.each do |test|
            if test.student == self
                my_tests += 1
            end
            if test.status == 'passed' && test.student == self
                my_passed_tests += 1
            end
        end

        (my_passed_tests / my_tests.to_f * 100).round(2)
    end
end
