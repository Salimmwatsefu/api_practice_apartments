Rails.application.routes.draw do
  # Apartments routes
  resources :apartments, only: [:index, :show, :create, :update, :destroy] do
    resources :leases, only: [:create]
  end

  # Tenants routes
  resources :tenants, only: [:index, :show, :create, :update, :destroy] do
    resources :leases, only: [:create]
    resources :apartments, only: [:index]
  end

  # Leases routes
  resources :leases, only: [:destroy]
end
