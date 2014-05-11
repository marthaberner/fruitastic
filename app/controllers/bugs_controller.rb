class BugsController < ApplicationController

  def index
    @bugs = Bug.all
    @bug = Bug.new
  end

  def create
    @bug = Bug.create(bug_params)

    if @bug.save
      redirect_to bug_path(@bug)
    else
      render new_bug_path
    end
  end

  def show
    @bug = Bug.find(params[:id])

  end

  private

  def bug_params
    params.require(:bug).permit(:bug_name, :color)
  end
end