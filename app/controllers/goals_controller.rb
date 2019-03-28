class GoalsController < ApplicationController
  before_action :current_user, only: [:index, :edit, :update] # help
  
  def index
    @goals = Goal.all
  end

  def show
  end

  def new
    @goal = Goal.current_user.new #uh idk if this must be changed help
  end
  
  def create
    @goal = Goal.current_user.new(name: params[:goal][:name]) #help xD
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
