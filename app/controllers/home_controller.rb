class HomeController < ApplicationController
  def index
    @categories = Category.all.order(:created_at, :desc)
  end

end
