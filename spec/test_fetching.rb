require_relative '../lib/fetching'

RSpec.describe Fetching do 
    let(:my_choice) {Fetching.new("Corporate",46)}
    
    describe "#instance" do
        it "should return the categories and the budget" do
            expect(my_choice.category).to eq("Corporate")
            expect(my_choice.budget).to eq(46)
        end
    end

    describe "#assignUrl" do
        it "should return the link of 'Creative'" do
            expect(my_choice.assignUrl).is_a?(String)
        end
    end
end