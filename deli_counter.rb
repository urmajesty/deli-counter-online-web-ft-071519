#brothers = ["Tim", "Tom", "Jim"]
#brothers.each{|brother| puts "Stop hitting yourself #{brother}!"}
#start empty Array
#1.build line method that sows everyone their current place in line if there is nobody in line, "The line is currently empty."
#2build method take_a_number 2 arguments - array(katz_deli) and string containing the name of the person joining the end of the line.  
#method call puts, the person's name, and position in line
#people like to count from 1 not 0
#3 now_serving method calls puts, the next person in line, then remove them from the front.  If there is nobody in line, it shold call out puts that "there is onbody waitign to be served!"

#ex   katz_deli = []
 
 # take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
  # take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.
 
  #line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
 
  #now_serving(katz_deli) #=> "Currently serving Ada."
 
 # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"
 
 # take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.
 
 # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"
 
 # now_serving(katz_deli) #=> "Currently serving Grace."
 
 # line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"def deli_katz
 
def line(array)
 if array.length >= 1
   katz_deli = []
    counter = 1 
    array.each do |name|
   katz_deli.push("#{counter}. #{name}")
 counter += 1
 end
 puts "The line is currently: #{katz_deli.join(" ")}"
  else
    puts "The line is currently empty."
  end
  
end
def take_a_number(line, joiner)
  line.push(joiner)
  puts "Welcome, #{joiner}. You are number #{line.length} in line."
end
   
   def now_serving(katz_deli)
     if katz_deli.length == 0
      puts "There is nobody waiting to be served!"
    else
       puts "Currently serving #{katz_deli.first}."
    
      
       katz_deli.shift
    
       
     
              
        
   
      end
  end
  
   

   
   
   
   