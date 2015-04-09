require "Pry"

##########################
#CLASS DECLARATION
##########################

class KeynotePresentation

 def initialize
   @file_source = "keynote.txt"
   @text_source 
 end	
  
 def text_process

 end	


 def load_text
 	@text_source = IO.read("keynote.txt").split("\n----\n") 
    binding.pry
    return @text_source
    
 end	

end 

##########################
#MAIN
##########################

puts KeynotePresentation.new.load_text

