class ProductController < ActionController::Base
  def index
    @all_products = Product.all
  end

  def new
    @product ||= Product.new
  end

  def edit

  end

  def create
    render action: new and return
  end

  private
  def person_params
    params.require(:product).permit(:name, :description, :image_url, :price)
  end
end
