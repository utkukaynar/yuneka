class CategoriesController < ApplicationController
  def show
    @vendor = Vendor.find(params[:vendor_id])
    @category = Category.find(params[:id])
  end
end
