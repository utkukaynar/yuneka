class VendorsController < ApplicationController
  def show
    @vendor = Vendor.find(params[:id])
    @vendor_category = Category.find_by(name: @vendor.title)
    @page_title = @vendor.title + " Ürünleri"
    @page_description = @vendor.description
    @page_keywords = @vendor.categories.map(&:name).split(", ")
  end
end
