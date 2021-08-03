require 'account'

describe Account do
  
  it "starts account balance at 0" do
     account = Account.new(0)
    expect(account.get_balance).to eq(0)
  end

  it 'allows to deposit money in the account' do 
     account = Account.new(0)
    account.deposit(10)
    expect(account.get_balance).to eq(10)
  end


  
end