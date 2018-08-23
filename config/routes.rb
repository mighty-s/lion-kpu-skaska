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

  get 'user/edit/:id' => 'user#edit'

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

  # Comment routes

    #RecipeComment routes
    #NoticeComment routes
  post 'comments/' => 'comments#create'

  delete 'comments/:id' => 'comments#destroy'

  # Recipe routes
  # resources :recipes
  get 'recipes/new' => 'recipes#new'

  get 'recipes/index' => 'recipes#index'

  # Home routes
  get 'home/search' => 'home#search'


  # 회원가입 완료했을때
  get 'user/join_complete'

  # 수정
  post 'user/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
