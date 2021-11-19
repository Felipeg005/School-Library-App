require './person'
require './classroom'

class Student < Person
  def initialize(classroom, age, name = 'unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  attr_accessor :classroom, :rentals

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
