class Account
  def initialize(balance = 0)
    @balance = balance
  end

  def get_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_balance
    "Your current balance is #{@balance}"
  end
end
