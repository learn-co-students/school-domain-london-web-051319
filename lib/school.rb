# code here!
class School
  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end
   
  def add_student(name, grade)
    if @roster.has_key?(grade) == false
      self.roster[grade] = []
    end
    self.roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |key, value|
      value.sort!
    end
  end
end
