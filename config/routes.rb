Rails.application.routes.draw do

  root 'photographies#index'

  resources :photographies

  devise_for :users

<<<<<<< HEAD
  get '/gallery' => 'photographies#gallery', as: :photography_gallery

=======
>>>>>>> 131339d46934b4580b06df02d2c30365ff2a98f9
end
