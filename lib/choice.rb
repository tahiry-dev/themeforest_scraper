class Choice
  attr_reader :choice

  CHOICE_RANGE = (1..12).to_a

  CATEGORIES = ['Corporate', 'Creative', 'E-commerce', 'Entertainment',
                'Technology', 'Nonprofit', 'Education', 'Real Estate',
                'Miscellaneous', 'Wedding', 'BuddyPress', 'Mobile'].freeze

  def initialize(choice)
    @choice = choice
  end

  def valid?
    CHOICE_RANGE.include?(@choice) ? true : false
  end

  def show_categories
    CATEGORIES[@choice - 1]
  end
end
