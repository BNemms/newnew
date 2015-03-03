Rails.application.routes.draw do
<<<<<<< HEAD
  get 'password_resets/new'

#get 'posts/index'
#get 'posts/new'
#get 'sessions/new'
#get 'sessions/create'
#get 'sessions/destroy'
get 'sessions/index'
#get 'users/index'
#get 'users/new'
#get 'users/create'

  root to: 'sessions#new'

  delete '/sessions' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:index, :new, :create, :show]
  
  
=======
  get "sign_up" => "user#new", :as=> "sign_up"
  root :up => "user#new"
  resources :users
end


>>>>>>> 2335db8cf13bad5c4a249ed117a9ecb5e3d21a8d
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
