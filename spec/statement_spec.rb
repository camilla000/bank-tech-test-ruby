# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'statement'

describe Statement do
  let(:head) { "date || credit || debit || balance\n" }
  before(:each) do
    @account = Account.new
  end
  before(:all) do
    @transactions = []
  end

  it 'saves account deposit transactions' do
    @account.deposit(100)
    expect(@account.transactions).to eq([["#{Date.today}||     ||100||100"]])
  end
end
