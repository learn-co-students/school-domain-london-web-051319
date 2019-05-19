# code here!

class School

  attr_accessor(:name, :classes)

  def intilialize(name)
    @name = name
    @classes = {}
  end

  def add_student(student_name, grade)
    classes[grade] ||= []
    classes[grade] << student_name
  end

  def grade(student_grade)
    classes[student_grade]
  end

  def sort
    sorted = {}
    classes.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end
end
school = School.new("Bayside High School")
