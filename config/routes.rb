LocBoxSas::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'user#login'

  post '/' => 'user#login'
  # Routes for user pages
  get '/create' => "user#create"
  post '/create' => "user#create"

  get '/manager/home_page' => 'manager#home_page'
  get '/manager/edit' => 'manager#edit'
  post '/manager/edit' => 'manager#edit'
  get  '/manager/add_staff' => 'manager#add_staff'
  get  '/manager/read_staff' => 'manager#read_staff'
  get  '/manager/update_staff' => 'manager#update_staff'
  get  '/manager/delete_staff' => 'manager#delete_staff'

  get '/staff/home_page' => 'staff#home_page'
  get '/staff/edit' => 'staff#edit'
  post '/staff/edit' => 'staff#edit'
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
