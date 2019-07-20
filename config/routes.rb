Rails.application.routes.draw do

  root "welcome#index"

  namespace :api do
    namespace :v1 do

      resources :venues, only: [:index, :show, :create, :destroy]
      resources :shows, only: [:index, :show, :create, :destroy]
      resources :performers, only: [:index, :show, :create, :destroy]

      get '/venues/:id/shows', to: 'venues/shows#index'
    end
  end

  # get 'auth/instagram', as: "insta_login"
  get '/auth/instagram/callback', to: "performers#create"
end
