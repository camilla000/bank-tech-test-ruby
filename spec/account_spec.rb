# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end
  before(:all) do
    @transactions = []
  end

  it 'starts account balance at 0' do
    expect(@account.balance).to eq 'Your current balance is £0'
  end

  context '#deposit' do
    it 'allows to deposit money in the account' do
      @account.deposit(10)
      expect(@account.balance).to eq 'Your current balance is £10'
    end
  end

  context 'withdraw' do
    it 'allows to withdraw money from account' do
      @account.deposit(10)
      @account.withdraw(5)
      expect(@account.balance).to eq 'Your current balance is £5'
    end

    it 'raises an error no enough money in account' do
      expect { @account.withdraw(50) }.to raise_error "You don't have enough funds"
    end
  end

  context '#date' do
    it 'checks if its the actual date' do
      expect(@account.date).to eq(Date.today)
    end
  end

  context '#print_statement' do
    it 'saves account deposit transactions' do
      @account.deposit(100)
      expect(@account.transactions).to eq([["#{Date.today}||     ||100||100"]])
    end
  end
end
