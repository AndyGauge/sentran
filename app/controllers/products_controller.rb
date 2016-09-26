class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :set_category

  # GET /products
  def index
    @products = @category.products.all
  end

  # GET /products/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.friendly.find(params[:id])
    end
    def set_category
      @category = Category.friendly.find(params[:category_id])
    end
end
