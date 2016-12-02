Rails.application.routes.draw do
  resource :articles, controller: :articles, only: [:new, :create]

  root to: 'articles#new'
end
