Rails.application.routes.draw do

  root 'photographies#index'

  resources :photographies

  devise_for :users

  get '/gallery' => 'photographies#gallery', as: :photography_gallery

end
