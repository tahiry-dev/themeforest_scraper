class Budget
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def valid_budget?
    @amount.positive?
  end
end
