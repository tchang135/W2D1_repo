class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan 
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |k,v| k[v] = []}
    end


    #PART 1 


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
            @students << string 
        else  
            return false 
        end 

    end 
    
    def enrolled?(string)
        return true if @students.include?(string)
    return false
    end 


    #PART 2


    def student_to_teacher_ratio
        @students.length / @teachers.length
    end 


    def add_grade(str, num)
        @grades[str] = num 
    end 
end
