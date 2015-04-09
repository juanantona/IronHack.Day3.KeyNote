require "Pry"
require "HighLine"

##########################
#CLASS DECLARATION
##########################

class KeynotePresentation

  def initialize
    @file_source = "keynote.txt"
    @arr_text_source
    @keynote_hash = {}
    @screen_size = HighLine::SystemExtensions.terminal_size 
  end	
  
  def text_process
   
    @arr_text_source = IO.read("keynote.txt").split("\n----\n")

    i = 0

    while i < @arr_text_source.length
      @keynote_hash[@arr_text_source[i]] = i
      i = i + 1
    end
    puts @keynote_hash
    puts @screen_size	  

  end	

  def load_text
  end	

  def navigation
  end

end 

class Text

end	

##########################
#MAIN
##########################

KeynotePresentation.new.text_process


