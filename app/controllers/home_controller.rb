class HomeController < ApplicationController
  def index
    @cats = Cat.all
    gon.rabl
  end
end
