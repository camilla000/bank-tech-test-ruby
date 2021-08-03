require 'statement'
require 'date'


describe Statement do 
  before(:each) do
    @statement = Statement.new([Date.today], [0], [0], [0])
  end

  it 'print statement table title' do 
    expect(@statement.print_title).to eq("date || deposit || withdraw || balance")
  end

  it "can print the statement" do
    statement = "date || deposit || withdraw || balance
    || 0 || 0 || 0 "
    expect { @statement.print_statement }.to output(statement).to_stdout
  end

end