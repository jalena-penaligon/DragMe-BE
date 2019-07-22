Rails.application.routes.draw do

  root "welcome#index"

  namespace :api do
    namespace :v1 do

      resources :venues, only: [:index, :create, :destroy]
      resources :shows, only: [:index, :show, :create, :destroy]
      resources :performers


      get '/venues/:id/shows', to: 'venues/shows#index'
      get '/auth/instagram/callback', to: "performers#create"
    end
  end

end
