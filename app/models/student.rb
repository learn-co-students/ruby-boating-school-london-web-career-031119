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
        @@all.find { |student| student.first_name == first_name}
    end

    def grade_percentage
        my_tests = BoatingTest.all.select do |test|
            test.student == self
        end

        my_passed_tests = my_tests.select do |test|
            test.status == 'passed'
        end

        my_passed_tests.size / my_tests.size.to_f * 100
    end
end
