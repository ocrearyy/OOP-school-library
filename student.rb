require './person'

class Student < Person
  def initialize(age, classroom, name = 'unknown', parent_permission: true)
    @classroom = classroom
    super
  end

  def play_hooky
    returns "¯\(ツ)/¯"
  end

  def update_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end


#unable to detrmine which students belong to a classroom 