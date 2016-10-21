class WelcomeController < ApplicationController
  def index
    @vendors = Vendor.all.order(created_at: :asc)
    @page_description = "Bursa kaynak makinası ve gazaltı kaynak makinası aksesuar ve ekipman satışları kaynak teli aliminyum tig mig mag bakır paslanmaz tel satışı."
    @page_keywords = SEARCH_ENGINE_KEYWORDS.map { |keyword| "bursa #{keyword} kaynak" }
  end
end
