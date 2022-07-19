require './person'

class Teacher < Person
  def initialize(age, specialization, name = 'unknown', parent_permission: true)
    @specialization = specialization
    super
  end

  def can_use_services
    true if of_age? || @permission_granted
  end
end
