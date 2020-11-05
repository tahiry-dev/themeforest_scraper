class Fetching
  attr_reader :category, :budget, :url
  @url = ''
  def initialize(category, budget)
    @category = category
    @budget = budget
  end

  def assign_url
    @url = "https://themeforest.net/category/wordpress/#{@category}?&sort=sales" 
  end
end
