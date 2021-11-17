require 'person.rb'
require 'classroom.rb'

class Student < Person
  def initialize(classroom, id, age, name = 'unknown', parent_permission = true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  attr_accessor :classroom

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
