class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.user_id = params[:user_id]
    @project.industry_comparable_id = params[:industry_comparable_id]
    @project.indirect_costs = params[:indirect_costs]
    @project.direct_costs = params[:direct_costs]
    @project.gap_dollar = params[:gap_dollar]
    @project.gap_percent = params[:gap_percent]
    @project.should_cost = params[:should_cost]
    @project.actual_cost = params[:actual_cost]
    @project.industry = params[:industry]
    @project.name = params[:name]

    if @project.save
      redirect_to "/projects", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    @project.user_id = params[:user_id]
    @project.industry_comparable_id = params[:industry_comparable_id]
    @project.indirect_costs = params[:indirect_costs]
    @project.direct_costs = params[:direct_costs]
    @project.gap_dollar = params[:gap_dollar]
    @project.gap_percent = params[:gap_percent]
    @project.should_cost = params[:should_cost]
    @project.actual_cost = params[:actual_cost]
    @project.industry = params[:industry]
    @project.name = params[:name]

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
