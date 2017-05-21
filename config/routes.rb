Rails.application.routes.draw do

  resources :resources do
    get 'listing', :on => :collection
    put :sort, on: :collection
  end

  resources :events do
    get 'mdn_events', :on => :collection
    put :sort, on: :collection
  end
  match 'mdn_events' => 'events#mdn_events', via: :get

  resources :mannerisms do
    get 'man_nerisms', :on => :collection
    put :sort, on: :collection
  end
  match "man_nerisms" => "mannerisms#man_nerisms", via: :get

  resources :jobs do
    get 'jobslisting', :on => :collection
  end
  match "jobslisting" => "jobs#jobslisting", via: :get

  #devise_for :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  
  #resources :affiliates

  resources :affiliates do
    get 'affiliatechurches', :on => :collection
    put :sort, on: :collection
  end
  match "affiliatechurches" => "affiliates#affiliatechurches", via: :get

  resources :sponsors do
    put :sort, on: :collection
    get :oursponsors, on: :collection
  end
  match "oursponsors" => "sponsors#oursponsors", via: :get

  resources :names

  resources :visitors, path_names: { new: 'contact_us' }
  match "contact_us" => "visitors#new", via: :get
  get 'visitors/acknowledge'


  get 'pages/aboutus'
  match "aboutus" => "pages#aboutus", via: :get

  get 'pages/bootcamp'
  match "bootcamp" => "pages#bootcamp", via: :get
  
  get 'pages/beliefs'
  match "beliefs" => "pages#beliefs", via: :get

  # get 'pages/contact_us'
  # match "contact_us" => "pages#contact_us", via: :get

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

  get "pages/leadership_training"
  match "leadership_training" => "pages#leadership_training", via: :get

  get "pages/lesson_sample"
  match "lesson_sample" => "pages#lesson_sample", via: :get

  get "pages/manstat"
  match "manstat" => "pages#manstat", via: :get

  get 'pages/ourstory'
  match "ourstory" => "pages#ourstory", via: :get

  get 'pages/ourfounder'
  match "ourfounder" => "pages#ourfounder", via: :get

  get 'pages/resources'
  # match "resources" => "pages#resources", via: :get

  get "pages/testimonies"
  match "testimonies" => "pages#testimonies", via: :get

  get "pages/vision"
  match "vision" => "pages#vision", via: :get

  get "pages/my_story"
  match "my_story" => "pages#my_story", via: :get

  get 'pages/dbc2017'
  match "dbc2017" => "pages#dbc2017", via: :get

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
