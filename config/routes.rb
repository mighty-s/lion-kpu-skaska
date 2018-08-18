Rails.application.routes.draw do

  resources :notices
  
  root 'home#index'

  get 'user/login'

  get 'user/edit'

  get 'notify/index'

  get 'home/index'

  get 'user/join'

  get 'user/mypage'

  post 'user/join_two'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
