require "./person.rb"

class Student < Person 



    def initialize(age, classroom, name = 'unknown', parent_permission = true)
        @classroom = classroom
        super
    end

    def play_hooky 
    returns "¯\(ツ)/¯"
    end
end
