# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student, grade_num)
    roster[grade_num] ||= []
    roster[grade_num] << student
  end 
  
  def grade(grade_num)
    roster.detect do |x, y| 
      if x == grade_num
        return y 
      end 
    end 
  end 
  
  def sort 
  new_hash = {}
  roster.each do |x, y| 
    new_hash[x] = y.sort 
  end 
  new_hash
end 
  
end