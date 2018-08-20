Rails.application.routes.draw do
  get 'recipe/index'

  get 'user/login'

  get 'user/edit'

  get 'notify/index'

  root 'home#index'

  get 'home/index'

  get 'user/join'

  get 'user/mypage'

  post 'user/join_two'

  get 'notify/show'

  get 'notify/create'

  post 'notify/index'

  get 'recipe/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
