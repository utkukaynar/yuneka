class WelcomeController < ApplicationController
  def index
    @vendors = Vendor.all
  end
end
