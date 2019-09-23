class Oystercard

  attr_reader :balance

  MAX_BALANCE = 90

  def initialize

    @balance = 0
    @in_use = false

  end

  def top_up(value)
    fail "You have exceeded the £#{MAX_BALANCE} limit" if (@balance + value) > MAX_BALANCE

    @balance += value
  end

  def deduct(value)

    @balance -= value

  end

  def in_journey?
    @in_use
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false 
  end


end
