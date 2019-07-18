Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :venues, only: [:index, :show, :new, :create, :destroy]
    end
  end
end
