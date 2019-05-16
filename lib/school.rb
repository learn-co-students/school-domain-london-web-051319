class School

def initialize(name)
  @name = name
  @roster = {}
end

attr_accessor :name, :roster, :add_student

def add_student(name, grade)

  if @roster.keys.include?(grade)
  @roster[grade] << name
  puts @roster
else
  @roster[grade] = []
  @roster[grade] << name
  puts @roster
end
end

def grade(num)
@roster[num]
end

def sort
self.roster.values.each do |array|
array.sort!
end
roster
end



end
