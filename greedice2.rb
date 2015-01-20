require File.expand_path(File.dirname(__FILE__) + '/about_dice_project')
require 'multiset'
puts "Welcome to greed dice game. Please Enter The Number of Player You Want To Play:"
number=gets.chomp
people_scores=[];
class Contains
def self.contains_all? a,other
    other = other.dup
    a.each{|e| if i = other.index(e) then other.delete_at(i) end}
    other.empty?
end
end
while not number.to_i.to_s==number
    puts "Please enter an integer:"
    number=gets.chomp
end
number=number.to_i
number=number-1
for m in 0..number
    people_scores[m]=0
end
while people_scores.all?{|score|score <1000}     
     for t in 0..number
        puts "Player #{t+1}:"
        old_score=people_scores[t]
        dice=DiceSet.new
        dice.roll(5)        
        nextornot='y'       
     while nextornot.eql?('y')        
               new_score=people_scores[t]     
               puts dice.values.inspect   
	      if Contains.contains_all?(dice.values,[1,1,1])                
		 people_scores[t]+=1000                              
		 dice.values=(Multiset.new(dice.values)-Multiset.new([1, 1,1])).to_a
                 puts dice.values.inspect+' Score:+  '+'1000'
	      end 
	      if Contains.contains_all?(dice.values,[6,6,6])                 
		 people_scores[t]=people_scores[t]+600
		 dice.values=(Multiset.new(dice.values)-Multiset.new([6,6,6])).to_a
	 	 puts dice.values.inspect+' Score:+  '+'600'
	      end 
	      if Contains.contains_all?(dice.values,[5,5,5])		
		 people_scores[t]=people_scores[t]+500
		 dice.values=(Multiset.new(dice.values)-Multiset.new([5,5,5])).to_a
                 puts dice.values.inspect+' Score:+  '+'500'
              end 		
	      if Contains.contains_all?(dice.values,[4,4,4])		
		 people_scores[t]=people_scores[t]+400
		 dice.values=(Multiset.new(dice.values)-Multiset.new([4,4,4])).to_a	
		 puts dice.values.inspect+' Score:+  '+'500'	
	      end
	      if Contains.contains_all?(dice.values,[3,3,3])		
		 people_scores[t]=people_scores[t]+300
		 dice.values=(Multiset.new(dice.values)-Multiset.new([3, 3,3])).to_a	
		puts dice.values.inspect+' Score:+  '+'300'
	      end 
	      if Contains.contains_all?(dice.values,[2,2,2])		
		 people_scores[t]=people_scores[t]+200
		 dice.values=(Multiset.new(dice.values)-Multiset.new([2,2,2])).to_a
		 puts dice.values.inspect+' Score:+  '+'200'
	      end
	      if Contains.contains_all?(dice.values,[1])	        
		 people_scores[t]=people_scores[t]+100
		 dice.values=(Multiset.new(dice.values)-Multiset.new([1])).to_a
		 puts dice.values.inspect+' Score:+  '+'100'
	      end 		
	      if Contains.contains_all?(dice.values,[5])		 
		 people_scores[t]=people_scores[t]+50
		 dice.values=(Multiset.new(dice.values)-Multiset.new([5])).to_a		
		 puts dice.values.inspect+' Score:+  '+'50'
	      end 
              puts "Your Score:#{people_scores[t]}"
              if new_score == people_scores[t] && people_scores[t] != 0
                 people_scores[t]=old_score
                 nextornot='no'
                 puts "You lost all your points for this turn"
                 break
              end 
              if(dice.values.size > 0 )
                 puts "Do you want to continue with the play"
                 nextornot=gets.chomp
                 dice.roll(dice.values.size)
              end
              if dice.values.size==0 && new_score !=people_scores[t] 
                 nextornot='no'
                 puts "You finish ur turn"
              end
              if dice.values.size==0 && new_score ==people_scores[t] 
                 puts "You have the next turn to play"            
              end                                   
    end 
      puts "Person #{t+1} has #{people_scores[t]} scores"
      puts "-----------------------"
    end    
    
end
puts "The person who has the highest score:Person #{people_scores.index(people_scores.max)+1}"   










