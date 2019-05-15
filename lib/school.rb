# require "pry"
# # code here!

# class School
   
#    # attr_accessor :roster,
   
#    # ROSTER = {}

#    def initialize(school_name)
#       # binding.pry
#       @school = school
#       # @roster = Hash.new
#    end

#    def school
#       @school
#    end

#    def roster
#       roster = {}
#    end

#    def add_student(name, grade)
#       if roster == {}
#          roster =  ""=>[""]
#       end
#       roster[grade] << name
#       # @name = name
#       # @age = age
#       # if roster["student"]
#       #    roster["student"] << {age=>name}
#       # else
#       #    roster["student"] = []
#       #    roster["student"] << {age=>name}
#       # end
#    # end


# end

# # pupil = School.new

class School
	attr_accessor :roster, :name, :grade 
	attr_reader :school 
	
	def initialize(school_name)
   @roster = {}
  end
  
   def add_student(student, grade)
      if roster[grade]== nil 
         roster[grade] = []
         roster[grade] << student
      else
         roster[grade] << student
      end
   end

   def grade(grade)
      roster[grade]
   end

   def sort
      a = {}
      roster.each do |grade, students|
         a[grade] = students.sort
      end
      a
   end

end