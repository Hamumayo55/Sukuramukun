Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }
  get '/watch',to: 'top_pages#watch'
  get '/q_and_a',to: 'top_pages#q_and_a'
  resources :microposts
  root 'top_pages#home'
end
