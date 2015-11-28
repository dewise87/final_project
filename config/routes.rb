Rails.application.routes.draw do
  devise_for :users

  # Routes for Users:
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  root "projects#index"

  # Routes for the Indirect_cost resource:
  # CREATE
  get "/indirect_costs/new", :controller => "indirect_costs", :action => "new"
  post "/create_indirect_cost", :controller => "indirect_costs", :action => "create"

  # READ
  get "/indirect_costs", :controller => "indirect_costs", :action => "index"
  get "/indirect_costs/:id", :controller => "indirect_costs", :action => "show"

  # UPDATE
  get "/indirect_costs/:id/edit", :controller => "indirect_costs", :action => "edit"
  post "/update_indirect_cost/:id", :controller => "indirect_costs", :action => "update"

  # DELETE
  get "/delete_indirect_cost/:id", :controller => "indirect_costs", :action => "destroy"
  #------------------------------

  # Routes for the Direct_cost resource:
  # CREATE
  get "/direct_costs/new", :controller => "direct_costs", :action => "new"
  post "/create_direct_cost", :controller => "direct_costs", :action => "create"

  # READ
  get "/direct_costs", :controller => "direct_costs", :action => "index"
  get "/direct_costs/:id", :controller => "direct_costs", :action => "show"

  # UPDATE
  get "/direct_costs/:id/edit", :controller => "direct_costs", :action => "edit"
  post "/update_direct_cost/:id", :controller => "direct_costs", :action => "update"

  # DELETE
  get "/delete_direct_cost/:id", :controller => "direct_costs", :action => "destroy"
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

end
