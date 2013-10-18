RubyOnRailsActiverecord::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  resources :mensajes


  root 'home#index'

  # Example of regular route:
  get 'join' => 'curso_activerecord#index'
  get 'join/joinSQL' => 'curso_activerecord#joins_sql'
  get 'join/join' => 'curso_activerecord#joins'
  get 'join/scope' => 'curso_activerecord#scope'
  
  get 'serializar' => 'serializar_objeto#index'
  get 'serializar/meta' => 'serializar_objeto#serializado_meta'
  get 'serializar/basic' => 'serializar_objeto#serializado'
  get 'serializar/custom' => 'serializar_objeto#serializado_custom'




  get 'validation' => 'curso_validaciones#index'
  post 'validation/create' => 'curso_validaciones#create'


  get 'mensaje/json' => 'mensajes#json'
  get 'mensaje/xml' => 'mensajes#xml'


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
