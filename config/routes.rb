Rails.application.routes.draw do
  resources :recipes do
    resources :recipe_ingredients, only: [:create]
  end
  resources :recipe_ingredients, only: [:destroy]

  root to: 'articles#index'
  resources :articles, except: :index
end
