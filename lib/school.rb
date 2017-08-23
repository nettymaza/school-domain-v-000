# code here!
require 'pry'
require 'awesome_print'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    # roster[grade] ||= []
    # roster[grade] << student_name
    unless @roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade_number)
    # roster[grade_number]
    @roster[grade_number]
  end

  def sort
  #   sorted = {}
  #   roster.each do |grade, students|
  #     sorted[grade] = students.sort
  #   end
  #   sorted
  # end
    sorted_grades = @roster.sort.to_h
    sorted_grades.each do |grade, students|
      sorted_grades[grade] = students.sort
    end
    return sorted_grades
  end
end

# school = School.new('Bountiful High')
# school.add_student('Annette Maza', 9)
# school.add_student('Thom Allen', 9)
# school.add_student('Diana Allen', 9)
# school.add_student('Clark Allen', 7)

# ap school.sort
# binding.pry
