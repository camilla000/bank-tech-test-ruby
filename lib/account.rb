# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'date'
require './lib/statement'

class Account
  attr_reader :transactions, :balance

  INITIAL = 0

  def initialize
    @balance = INITIAL
    @transactions = []
  end

  def date
    Date.today
  end

  def print_title
    'date || credit(£) || debit(£) || balance(£)'
  end

  def balance
    "Your current balance is £#{@balance}"
  end

  def deposit(amount)
    @balance += amount
    puts print_title
    @transactions << ["#{date}||     ||#{amount}||#{@balance}"]
    "Your current balance is £#{@balance}"
  end

  def withdraw(amount)
    puts print_title
    raise "You don't have enough funds" unless amount < @balance

    puts print_title
    @transactions << ["#{date}||#{amount}||     ||#{@balance}"]

    @balance -= amount
  end
end
