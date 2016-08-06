Rails.application.routes.draw do

  get 'pages/aboutus'
  match "aboutus" => "pages#aboutus", via: :get

  get 'pages/bootcamp'
  match "bootcamp" => "pages#bootcamp", via: :get

  get 'pages/contact'
  match "contact" => "pages#contact", via: :get

  get 'pages/coaches'
  match "coaches" => "pages#coaches", via: :get

  get 'pages/donate'
  match "donate" => "pages#donate", via: :get

  get 'pages/elders'
  match "elders" => "pages#elders", via: :get

  get 'pages/system'
  match "system" => "pages#system", via: :get

  get "pages/curriculum"
  match "curriculum" => "pages#curriculum", via: :get
  match "weapons" => "pages#curriculum", via: :get

  get "pages/lesson_sample"
  match "lesson_sample" => "pages#lesson_sample", via: :get

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
