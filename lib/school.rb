# code here!

class School

  attr_reader(:school)

  def intilialize(school)
    @school = school
  end

end
school = School.new("Test School")
