class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image_url, :price

end
