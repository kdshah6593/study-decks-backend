Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :decks
      resources :flashcards
      resources :users, only: [:index, :show, :create]
      post '/login', to: 'auth#create'
    end
  end

end