Rails.application.routes.draw do
  resources :cards
  resources :decks
  resources :users

  namespace :api do
    namespace :v1 do
      #routes here
      #get 'decks', to: 'decks#index'
      #post 'card', to: 'cards#create'
    end
  end
end
