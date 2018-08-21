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
  get 'notify/index'

  get 'notify/show'

  get 'notify/create'

  post 'notify/index'

  get 'recipe/new'

  # Recipe routes
  get 'recipe/index'

  # home에서 서치한거 찾았을때
  get 'home/searchResult'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
