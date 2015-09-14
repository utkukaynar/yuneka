class WelcomeController < ApplicationController
  def index
    @vendors = Vendor.all.order(created_at: :asc)
  end
end
