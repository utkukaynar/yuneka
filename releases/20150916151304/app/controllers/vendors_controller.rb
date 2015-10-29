class VendorsController < ApplicationController
  def show
    @vendor = Vendor.find(params[:id])
    @vendor_category = Category.find_by(name: @vendor.title)
  end
end
