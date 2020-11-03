class Fetching
    attr_reader :category, :budget, :url, :pagenum, :page_list
    @@pagenum = 1
    @@url = ""
    @@page_list = 0
    def initialize(category,budget)
        @category = category
        @budget = budget
    end

    def assignUrl
        if @category == 'Corporate'
             @@url = "https://themeforest.net/category/wordpress/corporate?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 60
        elsif @category == 'Creative'
             @@url = "https://themeforest.net/category/wordpress/creative?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 60
        elsif @category == 'Blog Magazine'
             @@url = " https://themeforest.net/category/wordpress/blog-magazine?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 60
        elsif @category == 'E-commerce'
             @@url = "https://themeforest.net/category/wordpress/ecommerce?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 45
        elsif @category == 'Retail'
             @@rl = "https://themeforest.net/category/wordpress/retail?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 38
        elsif @category == 'Entertainment'
             @@url = "https://themeforest.net/category/wordpress/entertainment?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 22
        elsif @category == 'Technology'
             @@url = "https://themeforest.net/category/wordpress/technology?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 14
        elsif @category == 'Nonprofit'
             @@url = "https://themeforest.net/category/wordpress/nonprofit?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 14
        elsif @category == 'Education'
             @@url = "https://themeforest.net/category/wordpress/education?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 9
        elsif @category == 'Real Estate'
             @@url = "https://themeforest.net/category/wordpress/real-estate?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 6
        elsif @category == 'Miscellaneous'
             @@url = "https://themeforest.net/category/wordpress/miscellaneous?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 5
        elsif @category == 'Wedding'
             @@url = "https://themeforest.net/category/wordpress/wedding?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 4
        elsif @category == 'BuddyPress'
             @@url = "https://themeforest.net/category/wordpress/buddypress?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 2
        elsif @category == 'Mobile'
             @@url = "https://themeforest.net/category/wordpress/mobile?page=#{@@pagenum}&sort=sales#content"
             @@page_list = 1        
        end
        @@url
    end
end  

