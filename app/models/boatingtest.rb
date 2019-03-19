class BoatingTest

    attr_accessor :student_name, :test_name, :test_status, :instructor

    @@all = []

    def initialize (student_name, test_name, test_status, instructor)
        @student_name = student_name
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
