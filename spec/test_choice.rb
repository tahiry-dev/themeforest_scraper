require_relative '../lib/choice'

RSpec.describe Choice do
    let(:my_choice){Choice.new("test")}
    let(:second_choice) {Choice.new(2)}
    let(:third_choice) {Choice.new(18)}
    let(:check_categories){Choice.new(5)}

    describe "#initialize" do
        context "The Class got instanciated" do
            it "should return test" do
                expect(my_choice.choice).to eq("test")
            end
        end
    end

    describe "#isValid?" do
        context "The choce is valid" do
            it "should return True" do
                expect(second_choice.isValid?).to be(true)
            end
        end
    
        context "The choice is not valid" do
            it "should return False" do
                expect(third_choice.isValid?).to be(false)
            end
        end
    end

    describe "showCategories" do
        it "should return the name of the category chosen" do
            expect(check_categories.showCategories).to eq('Retail')
        end
    end
end
