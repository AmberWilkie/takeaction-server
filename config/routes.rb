Rails.application.routes.draw do
  resource :articles, controller: :articles, only: [:new, :create, :update]

  root to: 'articles#new'

  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index], constraints: { format: /(json)/ }
    end
  end
end
