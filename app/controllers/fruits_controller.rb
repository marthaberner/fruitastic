class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all
  end

  def new

  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def create
    Fruit.create(
      name: params[:name], description: params[:description]
    )
    redirect_to '/'
  end
end