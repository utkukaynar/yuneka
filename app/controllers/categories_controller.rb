class CategoriesController < ApplicationController
  def show
    @vendor = Vendor.includes(:categories).find(params[:vendor_id])
    @category = Category.find(params[:id])
    @page_title = @vendor.title + " | "+ @category.name + " Ürünleri"
    @page_description = @category.description
    @page_keywords = SEARCH_ENGINE_KEYWORDS.concat(@vendor.categories.map(&:name))
  end
end
