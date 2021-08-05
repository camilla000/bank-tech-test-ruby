# frozen_string_literal: true

require 'account'

class Statement
  def print_statement
    
    i = 0
    while i <= @transactions.length
      puts @print_title
      puts @transactions[i]
      i += 1
    end
  end
end
