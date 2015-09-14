class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @vendor = @category.vendor
  end
end
