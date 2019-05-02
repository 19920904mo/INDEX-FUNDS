Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root  'starters#index'   
  get 'starters' => 'starters#index'
  get 'introductions' => 'introductions#index'
  post '/login' => 'starters#login' # ログイン画面
end
