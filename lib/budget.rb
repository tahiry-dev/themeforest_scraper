class Budget
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def validBudget?
     @amount <= 0 ? false : true
  end
end