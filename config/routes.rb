Rails.application.routes.draw do
  resource :articles, controller: :articles, only: [:new, :create, :update, :show, :edit]

  namespace :articles do
    resource :action_items, controller: :action_items, only: [:edit, :show, :update]
  end

  root to: 'articles#new'

  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index], constraints: { format: /(json)/ }
      get '/:id/actions/', controller: :articles, action: :actions, constraints: { format: /(json)/ }
    end
  end
end
