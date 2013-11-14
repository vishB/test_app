Fotoz::Application.routes.draw do
  resources :details

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  

  
  resources :photos

  resources :albums,:collection => { :move_to_album => :put }
  
  resources :site

  resources :friends

  resource :traveller

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   devise_scope :user do 
    root 'site#index'
    get "/users/sign_out" => "devise/sessions#destroy"
   end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
      get 'albums/:id/create_zip' => 'albums#create_zip', as: :zip
      get 'upload', to: 'photos#upload_bulk_images', as: :bulk
      get 'download', to: 'site#download'
      get 'explore', to: 'site#explore'
      get 'share', to: 'site#share'
      post 'move_to_album', to: 'albums#move_to_album'
      get 'send_request', to: 'friends#invitation'
      get 'profile', to: 'details#index'
      

#  get 'profile', to: 'users#show'

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
