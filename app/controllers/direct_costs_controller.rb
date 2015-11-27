class DirectCostsController < ApplicationController
  def index
    @direct_costs = DirectCost.all
  end

  def show
    @direct_cost = DirectCost.find(params[:id])
  end

  def new
    @direct_cost = DirectCost.new
  end

  def create
    @direct_cost = DirectCost.new
    @direct_cost.amount = params[:amount]
    @direct_cost.category_name = params[:category_name]
    @direct_cost.project_id = params[:project_id]

    if @direct_cost.save
      redirect_to "/direct_costs", :notice => "Direct cost created successfully."
    else
      render 'new'
    end
  end

  def edit
    @direct_cost = DirectCost.find(params[:id])
  end

  def update
    @direct_cost = DirectCost.find(params[:id])

    @direct_cost.amount = params[:amount]
    @direct_cost.category_name = params[:category_name]
    @direct_cost.project_id = params[:project_id]

    if @direct_cost.save
      redirect_to "/direct_costs", :notice => "Direct cost updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @direct_cost = DirectCost.find(params[:id])

    @direct_cost.destroy

    redirect_to "/direct_costs", :notice => "Direct cost deleted."
  end
end
