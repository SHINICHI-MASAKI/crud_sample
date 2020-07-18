Rails.application.routes.draw do
  resources :users
  # 新規投稿画面へのルーティング
  get "/users/new", to: "users#new"
  get "/users", to: "users#index"
  # 新規登録を行うためのルーティング
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
end
