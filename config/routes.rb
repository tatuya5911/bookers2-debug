Rails.application.routes.draw do

  root 'home#top'
  get 'home/about'

  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  # devise_forが優先度が低かったため、resourcesより上に移動
  # https://qiita.com/yusaku_/items/d49c7f19feda6dba127a


end
