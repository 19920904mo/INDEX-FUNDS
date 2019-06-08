Rails.application.routes.draw do
  get 'blogs/index'
  get 'blogs/genre'
  get 'blogs/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root  'starters#index'   
  get 'starters' => 'starters#index'
  get 'introductions' => 'introductions#index'
  get   'questions/index'  =>  'questions#index'       #質問一覧画面
  get   'questions/new'  =>  'questions#new'       #ツイート投稿画面
  post  'questions'      =>  'questions#create'    #ツイート投稿機能
  get   'questions/create'  =>  'questions#create'
  get   'answers/index'  =>  'answers#index'
  get 'answers/:question_id/new' => 'answers#new' #回答画面
  post 'answers' => 'answers#create' #回答画面
  get 'answers/:question_id/show' => 'answers#show' #部分一覧画面
  
  get 'blogs' => 'blogs#index'
  get 'blogs/:page' => 'blogs#index'
  
  get 'blogs/genre/:id' => 'blogs#genre'
  get 'blogs/genre/:id/:page' => 'blogs#genre'
  
  get 'blogs/show/:id'  => 'blogs#show'
  get 'knowledgeposts' => 'knowledgeposts#index'
  
  get 'knowledgeposts/delete/:id' => 'knowledgeposts#delete'
  post 'knowledgeposts/delete' => 'knowledgeposts#delete'
  post 'knowledgeposts/delete/:id' => 'knowledgeposts#delete'
  
  get 'knowledgeposts/add'
  post 'knowledgeposts/add'
  
  get 'knowledgeposts/:id' => 'knowledgepostst#edit'
  patch 'knowledgeposts/:id' => 'knowledgeposts#edit'
  
  get 'knowledgeposts/delete'
  
  get 'knowledgegenres/index'
  get 'knowledgegenres' => 'knowledgegenres#index'
  
  get 'knowledgegenres/add'
  post 'knowledgegenres/add'
  
  get 'knowledgegenres/:id' => 'knowledgegenres#edit'
  patch 'knowledgegenres/:id' => 'knowledgegenres#edit'
  
  get 'knowledgeconfigs/index'
  get 'knowledgeconfigs' => 'knowledgeconfigs#index'
  
  get 'knowledgeconfigs/edit'
  patch 'knowledgeconfigs/edit'
  
end
