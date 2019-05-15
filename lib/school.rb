class School

attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(grade, name)
  @roster[name] ||= []
  @roster[name] << grade
end

def grade(grade)
  roster[grade]
end

def sort
  new_hash = Hash[@roster.sort.map { |grade, name| [grade, name.sort] }]
  @roster = new_hash
end

end
