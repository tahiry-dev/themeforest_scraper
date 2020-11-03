class Choice
    attr_reader :choice

    CHOICE_RANGE = (1..14).to_a

    @@categories = ["Corporate","Creative","Blog Magazine","E-commerce","Retail","Entertainment","Technology","Nonprofit","Education","Real Estate","Miscellaneous","Wedding","BuddyPress","Mobile"]

    
    def initialize(choice)
        @choice = choice 
    end

    def isValid?
        CHOICE_RANGE.include?(@choice) ? true : false
    end

    def showCategories
        @@categories[(@choice)-1]
    end
end