class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all
  end

  def new

  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def edit
    @fruit = Fruit.find(params[:id])

  end

  def update
    @fruit = Fruit.find(params[:id])
    @fruit.name = params[:fruit][:name]
    @fruit.description = params[:fruit][:description]

    @fruit.save

    redirect_to "/fruits/#{@fruit.id}"
  end

  def create
    Fruit.create(
      name: params[:name], description: params[:description]
    )
    redirect_to '/'
  end
end