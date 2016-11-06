Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'pages/home'

  get 'pages/faq'

  get 'pages/about'
root "pages#home"

authenticated :user do
  root :to => "posts#index"
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
