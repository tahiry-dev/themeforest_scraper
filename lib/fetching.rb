require 'nokogiri'
require 'open-uri'

class Fetching
  attr_reader :category, :budget, :url, :price_arr, :url_x, :result
  @url = ''
  @result = ''
  def initialize(category, budget, url_x = nil)
    @category = category
    @budget = budget
    @url_x = url_x
  end

  def assign_url
    @url = "https://themeforest.net/category/wordpress/#{@category}?&sort=sales" 
  end

  def parse_data(url_x)
    result = []
    my_url = URI.open(url_x)
    doc = Nokogiri::HTML(my_url)
    price_arr = doc.css('.-DeRq').text.strip.split('$')
    product_price = price_arr.select { |price| price.length.positive? }
    product_links = doc.css('._2Pk9X').collect { |title| title.attribute('href').value }
    products_hash = Hash[product_links.zip product_price]
    products_hash.select {|key, value| result << key if value.to_i <= @budget}
    @result = result
  end
end
