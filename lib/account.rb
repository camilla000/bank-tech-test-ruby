require_relative 'statement'
require 'date'

class Account

  attr_reader :balance, :date, :balance_array, :deposit_array, :withdraw_array



  def initialize(balance = 0)
    @balance = balance
    @date = []
    @balance_array = []
    @deposit_array = []
    @withdraw_array = []

  end

  def get_balance
    @balance
  end

  def deposit(amount)
    @deposit_array.push(amount)
    @withdraw_array.push(0)
    @balance_array.push(@balance += amount)
    @date.push(Date.today)
  end

  def withdraw(amount)
    @deposit_array.push(0)
    @withdraw_array.push(amount)
    @balance_array.push(@balance -= amount)
    @date.push(Date.today)
  end

  
end
