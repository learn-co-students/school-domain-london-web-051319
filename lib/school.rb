require "pry"

class School
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, number)
    if @roster[number] == nil
      @roster[number]= []
    end
    @roster[number] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    newHash = {}
    @roster.collect do |key, value|
      newHash[key] = value.sort
    end
    newHash
  end
end
