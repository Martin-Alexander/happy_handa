class GoalsController < ApplicationController 
  def index
    @goals = Goal.where(user: current_user)
  end

  def show
  end

  def new
    @goal = Goal.new
  end
  
  def create
    @goal = Goal.new(name: params[:goal][:name]) #help xD
    @goal.user = current_user
    @goal.save

    redirect_to goals_path
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy

    redirect_to goals_path
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(name: params[:goal][:name])
    
    redirect_to goals_path
  end
end
