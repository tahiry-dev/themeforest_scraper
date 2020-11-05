require_relative '../lib/fetching'

RSpec.describe Fetching do
  let(:my_choice) { Fetching.new('Corporate', 46) }
  let(:corporate) {Fetching.new('Corporate', 70)}

  describe '#instance' do
    it 'should return the categories and the budget' do
      expect(my_choice.category).to eq('Corporate')
      expect(my_choice.budget).to eq(46)
    end
  end

  describe '#assignUrl' do
    it "should return the link of 'Creative'" do
      expect(my_choice.assign_url).is_a?(String)
    end
  end

  describe "#parse_data" do
      it "should return an array" do
        expect(corporate.parse_data('https://themeforest.net/category/wordpress/corporate?&sort=sales')).is_a?(Array)
      end
  end
end
