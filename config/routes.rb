Rails.application.routes.draw do

  root 'photographies#index'

  resources :photographies

  devise_for :users

  get '/lenta' => 'photographies#lenta', as: :photography_lenta

end
