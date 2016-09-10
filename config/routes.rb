Rails.application.routes.draw do

  root 'photographies#index'

  resources :photographies

  devise_for :users

end
