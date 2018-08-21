Rails.application.routes.draw do

  get 'comments/create'

  get 'comments/destroy'

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

  # Comment routes

    #RecipeComment routes
    #NoticeComment routes
  post 'comments/' => 'comments#create'

  # Recipe routes
  get 'recipe/index'

  # home에서 서치한거 찾았을때
  get 'home/searchResult'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
