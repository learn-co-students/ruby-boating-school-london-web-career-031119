class BoatingTest

attr_accessor :student, :name, :test_status, :instructor

@@all = []

def self.all
@@all
end

def initialize(student, name, test_status, instructor)
@student = student
@name = name
@test_status = test_status
@instructor = instructor
self.class.all << self
end




end
