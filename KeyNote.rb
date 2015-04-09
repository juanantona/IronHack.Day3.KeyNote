require "Pry"
require "HighLine"

##########################
#CLASS DECLARATION
##########################

class KeynotePresentation

  def initialize(arr_pagination)
    @screen_size = HighLine::SystemExtensions.terminal_size
    @arr_pagination = arr_pagination
    @command
    @@index = 0
  end	
  
  def navigation
    show_page(@arr_pagination, @@index)
    while @command != "exit"
      print ">"
      @command = gets.chomp
      show_page(@arr_pagination, process_index(@@index, @command))
    end	
  end
  
  def process_index(index, command)
    case command
    when "next"
      if index < @arr_pagination.length - 1	
        return @@index = index.next
      end
      return @@index
    when "previous"  
      if index > 0	
        return @@index = index.pred
      end
      return @@index
    else
      return @@index
    end   

  end

  def show_page(arr, index)
    puts arr[index]
  end

end 

class Text_Process
  
  def initialize
    @file_source = "keynote.txt"
    @arr_text_source
  end	
  
  def load_text_to_array
  	return @arr_text_source = IO.read("keynote.txt").split("\n----\n")
  end

end	

##########################
#MAIN
##########################

KeynotePresentation.new(Text_Process.new.load_text_to_array).navigation





