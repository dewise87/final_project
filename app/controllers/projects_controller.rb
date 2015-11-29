class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @total = (@project.direct_costs / (1 - (@project.rd + @project.sga + @project.profit)/100)).round(2)
    @indirect = (@total - @project.direct_costs).round(2)
    @gap_dollar = (@project.actual_cost - @total).round(2)
    @gap_percent = ((@gap_dollar / @project.actual_cost) * 100).round(2)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.user_id = params[:user_id]
    @project.direct_costs = params[:direct_costs]
    @project.actual_cost = params[:actual_cost]
    @project.industry = params[:industry]
    @project.name = params[:name]
    @project.rd = params[:rd]
    @project.sga = params[:sga]
    @project.profit = params[:profit]

    if @project.save
      redirect_to "/projects", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
    if current_user != @project.user
      redirect_to "/projects", :alert => "You may only edit your own models."
    end
  end

  def update
    @project = Project.find(params[:id])

    @project.user_id = params[:user_id]
    @project.direct_costs = params[:direct_costs]
    @project.actual_cost = params[:actual_cost]
    @project.industry = params[:industry]
    @project.name = params[:name]
    @project.rd = params[:rd]
    @project.sga = params[:sga]
    @project.profit = params[:profit]

    if @project.save
      redirect_to "/projects", :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to "/projects", :notice => "Project deleted."
  end
end
