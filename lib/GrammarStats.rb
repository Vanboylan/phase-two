class GrammarStats
    def initialize
      @counter = 0
      @good = 0
    end
    def check(text) # text is a string
      @counter += 1
      if (/[A-Z]/).match?(text[0]) && ".?!".include?(text[-1]) == true
        @good += 1
        return true
     else
        return false
     end 
    end

    def percentage_good
      percentage = (@good / @counter.to_f)*100
      @good == 0 ? 0 : (return percentage.round(2))
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
  
  
  
  
  
  
  