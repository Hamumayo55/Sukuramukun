Rails.application.routes.draw do
  devise_for :users
 get '/watch',to: 'top_pages#watch'
 root 'top_pages#home'
end
