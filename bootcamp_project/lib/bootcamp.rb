class Bootcamp
    initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan 
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |k,v| k[v] = []}
    end

    def name 
        @name
    end 

    def slogan 
        @slogan 
    end 

    def teachers 
        @teachers 
    end 

    def students 
        @students 
    end 

    def hire(string)
        @teachers << string
    end 

    def enroll(string)
        if @students.length < @student_capacity
            @students << string && return true 
        else  
            return false 
        end 

    end 
    



    def enrolled?(string)
        return true if @students.include?(string)
    return false
    end 
end
