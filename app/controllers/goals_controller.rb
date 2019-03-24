class GoalsController < ApplicationController
  
  def index
    @goals = Goal.all
  end

  def show
  end

  def new
    @goal = Goal.new
  end
  
  def create
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def destroy
  end
end
