# code here!
require 'pry'
class School
  attr_accessor :roster, :student_name, :grade
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.has_key?(grade) == false
      @roster[grade] = []
      #binding.pry
    end
      self.roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roster.each do |grade, student_names|
        @roster[grade] = student_names.sort
        #binding.pry
      end
    end
end

