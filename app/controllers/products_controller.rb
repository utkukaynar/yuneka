class ProductsController < ApplicationController
  def show
    @product = Product.includes(category: [ :vendor ]).find(params[:id])
    @category = @product.category
    @vendor = @category.vendor
    @page_title = @vendor.title + " | " + @product.name
    @page_description = @product.description
    @page_keywords = @vendor.categories.map(&:name).split(", ")
  end
end
