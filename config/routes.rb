Rails.application.routes.draw do
<<<<<<< HEAD

  devise_for :logins

  get 'searchadmins/index'
  
=======
>>>>>>> 8e5d60c3ff0035bf62ee222568dc670e1b4d3803
  resources :searchadmins do
    collection { post :search, to: 'searchadmins#index'}
  end

  get 'searchusers/index' -> 'searchusers#index'
  
  resources :searchusers do
    collection do
      match 'search' => 'searchusers#search', :via => [:get, :post], :as => :search
    end
  end


  get 'brett/index' => 'brett#index'
  get 'brad/index' => 'brad#index'
  get 'survey/index' => 'survey#index'
  get 'welcome/index'
  get 'report/index' => 'report#index'



  post 'report/show' => 'report#show'

  resources :logins

  resources :giving_back, only: [:new, :create]

  resources :survey_admin, only: [:new, :add, :create, :edit, :index]



  namespace :admin do
    resources :giving_back, only: :index
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
