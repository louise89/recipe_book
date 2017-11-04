Rails.application.routes.draw do
get 'welcome/index'

concern :ingredientable do
  resources :recipe_ingredients
end

concern :cookable do
  resources :recipe_methods
end

resources :recipes, concerns: [:ingredientable, :cookable]
resources :ingredients, concerns: :ingredientable
resources :cooking_methods, concerns: :cookable
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
end
