class FruitsController < ApplicationController

  def index
    @fruits = Fruit.all
    @fruit = Fruit.new
  end

  def new

  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def create
    @fruit = Fruit.create(params[:id])
    @fruit.name = params[:fruit][:name]
    @fruit.description = params[:fruit][:description]

    @fruit.save
    redirect_to '/fruits'
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

  def destroy
    @fruit = Fruit.find(params[:id])
    @fruit.destroy
    redirect_to '/'
  end


end