class IndirectCostsController < ApplicationController
  def index
    @indirect_costs = IndirectCost.all
  end

  def show
    @indirect_cost = IndirectCost.find(params[:id])
  end

  def new
    @indirect_cost = IndirectCost.new
  end

  def create
    @indirect_cost = IndirectCost.new
    @indirect_cost.project_id = params[:project_id]
    @indirect_cost.profit = params[:profit]
    @indirect_cost.sga = params[:sga]
    @indirect_cost.rd = params[:rd]

    if @indirect_cost.save
      redirect_to "/indirect_costs", :notice => "Indirect cost created successfully."
    else
      render 'new'
    end
  end

  def edit
    @indirect_cost = IndirectCost.find(params[:id])
  end

  def update
    @indirect_cost = IndirectCost.find(params[:id])

    @indirect_cost.project_id = params[:project_id]
    @indirect_cost.profit = params[:profit]
    @indirect_cost.sga = params[:sga]
    @indirect_cost.rd = params[:rd]

    if @indirect_cost.save
      redirect_to "/indirect_costs", :notice => "Indirect cost updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @indirect_cost = IndirectCost.find(params[:id])

    @indirect_cost.destroy

    redirect_to "/indirect_costs", :notice => "Indirect cost deleted."
  end
end
