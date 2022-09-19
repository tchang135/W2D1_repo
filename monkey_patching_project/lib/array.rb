# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
    #PART 1


    def span
        if self == []
            return nil 
         elsif self.all? { |ele| ele.is_a?(Integer)}
            self.max - self.min
        end 
    end 

    def average 
        if self == []
            return nil 
         elsif self.all? { |ele| ele.is_a?(Integer)}
            (self.sum / self.length).to_f
        end 
    end 

    def median 
       counter = self.count { |ele| ele}
       if counter.odd? 

       elsif counter.even? 

       else 
           return nil
       end 
    end 


  
end
