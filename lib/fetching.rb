class Fetching
  attr_reader :category, :budget, :url
  @url = ''
  def initialize(category, budget)
    @category = category
    @budget = budget
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/PerceivedComplexity
  def assign_url
    if @category == 'Corporate'
      @url = 'https://themeforest.net/category/wordpress/corporate?&sort=sales'
    elsif @category == 'Creative'
      @url = 'https://themeforest.net/category/wordpress/creative?&sort=sales'
    elsif @category == 'E-commerce'
      @url = 'https://themeforest.net/category/wordpress/ecommerce?&sort=sales'
    elsif @category == 'Entertainment'
      @url = 'https://themeforest.net/category/wordpress/entertainment?&sort=sales'
    elsif @category == 'Technology'
      @url = 'https://themeforest.net/category/wordpress/technology?&sort=sales'
    elsif @category == 'Nonprofit'
      @url = 'https://themeforest.net/category/wordpress/nonprofit?&sort=sales'
    elsif @category == 'Education'
      @url = 'https://themeforest.net/category/wordpress/education?&sort=sales'
    elsif @category == 'Real Estate'
      @url = 'https://themeforest.net/category/wordpress/real-estate?&sort=sales'
    elsif @category == 'Miscellaneous'
      @url = 'https://themeforest.net/category/wordpress/miscellaneous?&sort=sales'
    elsif @category == 'Wedding'
      @url = 'https://themeforest.net/category/wordpress/wedding?&sort=sales'
    elsif @category == 'BuddyPress'
      @url = 'https://themeforest.net/category/wordpress/buddypress?&sort=sales'
    elsif @category == 'Mobile'
      @url = 'https://themeforest.net/category/wordpress/mobile?&sort=sales'
    end
    @url
  end
  # rubocop:enable Metrics/PerceivedComplexity
  # rubocop:enable Metrics/CyclomaticComplexity
end
