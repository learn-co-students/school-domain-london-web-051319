class School
	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		@roster[grade] = (@roster[grade] ||= []) << student
		#@roster.include?(grade) ? @roster[grade] << student : @roster[grade] = [student]
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.map{|k,v| [k, v.sort]}.to_h
	end
end

# school1 = School.new("Bayside High School")
# school1.add_student("student", 10)