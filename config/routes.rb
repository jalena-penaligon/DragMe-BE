Rails.application.routes.draw do

  root "welcome#index"

  namespace :api do
    namespace :v1 do

      resources :venues, only: [:index, :create, :destroy]
      resources :shows, only: [:index, :show, :create, :destroy]
      resources :performers


      get '/venues/:id/shows', to: 'venues/shows#index'
    end
  end
  get '/auth/instagram/callback', to: "api/v1/performers#create"

end
