require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster 
    end
    
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = [] 
        end
        @roster[grade] << name
    end

    def grade(grade)
       @roster[grade]
        # .detect all students in grade 9
    end

    def sort
        sorted_list = {}
        @roster.collect do |grade, name|
            sorted_list[grade] = name.sort
        end
        sorted_list
    end
end


# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster
