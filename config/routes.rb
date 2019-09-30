Rails.application.routes.draw do
 get '/watch',to: 'top_pages#watch'
 root 'top_pages#home'
end
