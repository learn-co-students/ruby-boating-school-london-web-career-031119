class Instructor
@@all = []

attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end

    def pass_student(student,test_name)
        BoatingTest.all.each do |x| 
            if x.student == student && x.test_name == test_name
            x.test_status = "pass"
            else
        BoatingTest.new(student,test_name,"failed",self)
    end
end
end

end

