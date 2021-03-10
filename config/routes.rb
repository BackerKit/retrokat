Rails.application.routes.draw do
  get '/' => 'boards#new', as: :root
  resources :boards
  resources :cards
end
