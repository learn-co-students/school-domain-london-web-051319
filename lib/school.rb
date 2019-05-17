require "pry"

class School

  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster=(usr_input)
    @roster = usr_input
    @roster
  end

  def add_student(name, grade)
    @name = name
    exist = @roster.none? {|the_class, arr| the_class == grade}

    if exist
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |k,v|v.sort! }
  end

end
