Rails.application.routes.draw do
# -------- 고주원이 설정한 라우트 -------------
  
  resources :notices
  
  root 'home#index'

# --------- 기존 master branch routes ------------
  
  get 'recipe/index'

  get 'user/login'

  get 'user/edit'

  get 'notify/index'

  get 'home/index'

  get 'user/join'

  get 'user/mypage'

  post 'user/join_two'

  get 'notify/show'

  get 'notify/create'

  post 'notify/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
