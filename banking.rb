class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  private
  def pin
    @pin = 1234
  end

  def pin_error
    puts "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: #{balance}."
    else
      puts "#{pin_error}"
    end
  end

    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts "#{pin_error}"
      end
    end

      def deposite(pin_number, amount)
        if pin_number == pin
          @balance += amount
          puts "Deposite: #{amount}. New balance: $#{@balance}"
        end
      end
    end

    my_account = Account.new("Roman Liubinets", 2000)
    my_account.withdraw(1234, 1999)
    my_account.deposite(1234, 2999)
