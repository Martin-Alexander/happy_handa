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
    @goal = Goal.new(name: params[:goal][:name])
    @goal.save

    redirect_to goals_path
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
  end
end
