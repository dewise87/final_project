Rails.application.routes.draw do
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

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
