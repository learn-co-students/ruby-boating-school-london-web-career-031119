class BoatingTest

  attr_accessor :status
  attr_reader :student, :name, :instructor

  @@all = []

  def initialize (student_Object, boating_test_name_String, boating_test_status_String, instructor_Object)
    @student = student_Object
    @name = boating_test_name_String
    @status = boating_test_status_String
    @instructor = instructor_Object
    @@all << self
  end

  def self.all
    @@all
  end

end
