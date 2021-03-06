Rails.application.routes.draw do
  get 'mail_sends/new'
  get 'mail_sends/edit'
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }
  get '/watch',to: 'top_pages#watch'
  get '/q_and_a',to: 'top_pages#q_and_a'
  get '/home',to: 'top_pages#home'
  get '/mail_setting',to: 'top_pages#notification_setting'
  get '/tool',to: 'top_pages#tool'

  resources :microposts
  resources :memos
  root 'top_pages#top'
end
