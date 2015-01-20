

# Implement a DiceSet Class here:
#
 class DiceSet
   attr_accessor:values
   def initialize
       @values = []
   
   end
   def roll(i)
       @values = []
       i.times do
          
          @values << rand(5)+1

       end   
 
   end
       

   
 end


