require_relative '../lib/budget'

RSpec.describe Budget do
  let(:my_limit) { Budget.new(40) }
  let(:my_budget) { Budget.new(-2) }

  describe '#initialize' do
    it 'should return the argument' do
      expect(my_limit.amount).to eq(40)
    end
  end

  describe '#validBudget?' do
    context 'the Budget is not valid' do
      it 'should return false' do
        expect(my_budget.valid_budget?).to eq(false)
      end
    end
    context 'the Budget is valid' do
      it 'should return true' do
        expect(my_limit.valid_budget?).to eq(true)
      end
    end
  end
end
