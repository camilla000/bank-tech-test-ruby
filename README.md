# Bank tech test

Makers Academy week 10 individual challenges.
Testing my OO and TDD skills.


## Requirements:

* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

* Deposits, withdrawal.

* Account statement (date, amount, balance) printing.

* Data can be kept in memory (it doesn't need to be stored to a database or anything).


## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When they prints their bank statement
Then they would see:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


## User Stories

```
As an user
So I can manage my money
I want to open a bank account


As an user
So I can have money in my account
I want to make deposits


As an user
So I can take money from my account
I want to make withdraws

As an user
So I know how much money I have in my account
I want to print a statement 
```


## How to use the program

### Set up:

```
bundle install
```

### How to run program:

In IRB:
```irb
require './lib/account.rb'
account = Account.new
account.deposit(2000)
account.withdraw(1000)
account.balance
```

### How to run tests:

```
rspec
```