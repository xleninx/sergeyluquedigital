class HomeController < ApplicationController
  def index
    @categories = Category.all.order(:created_at)
  end

end
