require_relative 'account'

class Statement

  def initialize (date, balance_array, deposit_array, withdraw_array)
    @date = date
    @balance_array = balance_array
    @deposit_array = deposit_array
    @withdraw_array = withdraw_array
    @money = -1
  end

  def print_title
    "date || deposit || withdraw || balance"
  end

  def print_statement
    # puts "Your current balance is #{@balance}"
     puts "date || deposit || withdraw || balance"
    while @money > -1 -  @balance_array.length
      puts "#{@date[@money]} || #{@deposit_array[@money]} || #{@withdraw_array[@money]} || #{@balance_array[@money]}"
      @money -=1
    end
  end
end