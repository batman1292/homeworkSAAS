HomeworkSAAS::Application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  #add to routes.rb, just before or just after 'resources :movies' :

  # Route that posts 'Search TMDb' form
  post '/movies/search_tmdb'

  root :to => redirect('/sessions/logout')

  # get 'movies' => 'movies#index'
  get 'movies/new' => 'movies#new'
  post 'movies' => 'movies#create'
  get 'movies/:id' => 'movies#show'
  put 'movies/:id' => 'movies#update'
  get 'movies/:id/edit' => 'movies#edit'
  delete 'movies/:id' => 'movies#destroy'

  get 'movies/:order/order' => 'movies#index', :as => 'order_movie'

  get 'auth/facebook', :as => 'login'
  get 'sessions/logout' => 'sessions#logout', :as => 'logout'
  match  'auth/:provider/callback' => 'sessions#create'
  match 'logout' => 'sessions#destroy'
  match  'auth/failure' => 'sessions#failure'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
