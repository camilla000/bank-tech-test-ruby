require 'account'

describe Account do
  it "starts account balance at 0" do
    account = Account.new(0)
    expect(account.balance).to eq(0)
  end
end