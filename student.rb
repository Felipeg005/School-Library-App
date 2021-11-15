require 'person.rb'

class Student < Person
  def initialize(classroom, id, age, name = 'unknown', parent_permission = true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  attr_reader :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end
end
