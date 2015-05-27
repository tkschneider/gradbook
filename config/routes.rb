Rails.application.routes.draw do

  devise_for :logins

  resources :searchadmins do
    collection { post :search, to: 'searchadmins#index'}
  end


  get 'brett/index' => 'brett#index'
  get 'brad/index' => 'brad#index'
  get 'survey/index' => 'survey#index'
  get 'welcome/index'
  get 'report/index' => 'report#index'
  get 'survey_admin/edit' => 'survey_admin#edit'
  get 'survey_admin/index' => 'survey_admin#index'



  post 'report/show' => 'report#show'

  resources :logins


  #resources :giving_back, only: [:new, :create]

  resources :survey_admin
  resources :survey_admin, :index
  resources :survey_admin, :new
  resources :survey_admin, :edit



  resources :giving_back, only: [:create] do
    new do
      get ':type', to: 'giving_back#new', as: ''
    end
  end
  get 'giving_back/new', to: redirect('/giving_back/new/other')

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
