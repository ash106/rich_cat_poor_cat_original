class HomeController < ApplicationController
  def index
    @cats = Cat.order(:id)
    gon.rabl
  end
end
