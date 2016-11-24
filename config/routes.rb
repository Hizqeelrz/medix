Rails.application.routes.draw do

  resources :raw_material_invoice_items
  resources :raw_material_invoices
  get 'mark_attendance', to: "attendances#mark_attendance"

  resources :bank_transactions
  resources :bank_accounts
  resources :orders
  resources :product_ingrediants
  resources :products
  resources :equipments
  resources :vendors
  resources :equipment_categories
  resources :raw_material_categories
  resources :raw_materials
  resources :provinces
  resources :cities
  resources :areas
  
  resources :clients do
    collection do
      get "update_areas", as: "update_areas"
      get "update_cities", as: "update_cities"
    end
  end

  root 'dashboards#dashboard'

  devise_for :users, path: "auth", path_names: { sign_in: "login", sign_out: "logout" }
  resources :users do
    collection do
      get "update_areas", as: "update_areas"
      get "update_cities", as: "update_cities"
    end
    member do
      patch :time_in
      patch :time_out
    end
  end

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
