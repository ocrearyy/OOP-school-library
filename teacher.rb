require "./person.rb"

class Teacher < Person
    def initialize(age, specialization, name = 'unknown', parent_permission = true)
        @specialization = specialization
        super
    end
    public
    def can_use_services 
        if is_of_age || @permission_granted
            return true
        else 
            return true
    end 
end