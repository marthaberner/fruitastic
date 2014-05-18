class BugsController < ApplicationController

  def index
    @bugs = Bug.all
    @bug = Bug.new
  end

  def create
    @bug = Bug.create(bug_params)

    if @bug.save
      redirect_to bugs_path
    else
      render 'bugs/index'
    end
  end

  def show
    @bug = Bug.find(params[:id])
  end

  def edit
    @bug = Bug.find(params[:id])
  end

  def update
    @bug = Bug.find(params[:id])
    @bug.update_attributes!(bug_params)

    redirect_to bug_path(@bug)
  end

  def destroy
    @bug = Bug.find(params[:id])
    @bug.delete

    redirect_to bugs_path
  end

  private

  def bug_params
    params.require(:bug).permit(:bug_name, :color)
  end
end