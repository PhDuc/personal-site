class ProductController < ApplicationController
  layout 'marketplace'
  before_action :persist_products, only: [:index, :new, :create]

  def index
  end

  def new
  end

  def edit

  end

  def create
    if valid_product_params?
      Product.create(product_params)
      redirect_to '/marketplace/product'
    else
      render action: 'new' and return
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :image_url, :price, :image)
  end

  def persist_products
    @all_products = Product.all
    @product ||= Product.new
  end

  def valid_product_params?
    # Temporary leave this to true until we work on error cases
    true
  end
end
