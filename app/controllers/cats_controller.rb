class CatsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
    @finances_enum = Cat.finances
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to @cat, notice: "Cat successfully created!"
    else
      render :new
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    @finances_enum = Cat.finances
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to @cat, notice: "Cat successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to cats_url, notice: "Cat successfully deleted!"
  end

private
  
  def cat_params
    params.require(:cat).permit(:finances, :image)
  end

end
