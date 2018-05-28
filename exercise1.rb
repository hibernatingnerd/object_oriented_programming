class BankAccount

def initialize (balance, interest_rate)
  @balance = balance
  @interest_rate = interest_rate.to_f / 100
end

def deposit
  puts "enter an amount to be deposited"
  @depo_amount = gets.to_i
  @balance = @balance + @amount
end

def display
  return @balance
end

def withdrawl
  puts "enter an amount to be withdrawn"
  @withdraw_amount = gets.to_i
    if @withdraw_amount > @balance
      puts "insufficent funds"
    else
      @balance = @balance - @withdraw_amount
    end
end

def gain_interest
  @balance = @balance + (@balance * @interest_rate)
end


end
