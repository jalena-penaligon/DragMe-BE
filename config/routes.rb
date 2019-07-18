Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :venues, only: [:index, :show, :create, :destroy]
      resources :shows, only: [:index, :show, :create, :destroy]
    end
  end
end
