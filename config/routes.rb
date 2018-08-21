Rails.application.routes.draw do

  root 'home#index'

  # Home routes
  get 'home/index'

  # User routes
  get 'user/join'

  get 'user/mypage'

  get 'user/login'

  get 'user/edit'

  post 'user/join_two'

  post 'user/create'

  # SessionUsers routes
  resource :session_users, only: %i[create destroy]

  # Notify routes

    #notify-read
  get 'notify/' => 'notify#index'

  get 'notice/' => 'notify#index'

  get 'notice/:id' => 'notify#show'

    #notify-create

  post 'notice/' => 'notify#new'

  get 'notify/show'

  get 'notify/create'


  get 'recipe/new'

  # Recipe routes
  get 'recipe/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
