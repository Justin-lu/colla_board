CollaBoard::Application.routes.draw do
  get "/" => "dashboard#index"
  get "/dashboard" => "dashboard#index"
  get "/dashboard/index" => "dashboard#index"

  get "sign_up" => redirect("auth/yammer")
  get "sign_in" => redirect("/auth/yammer")

  get "auth/failure" => "sessions#failure"
  get "sign_out" => "sessions#destroy", as: :sign_out
  get "/auth/:provider/callback" => 'sessions#create'
  post "/auth/:provider/callback" => 'sessions#create'

  resources :users, only: [:index, :show]
  resources :projects
  resources :tasks
  resources :comments

  root to: "dashboard#index"
end
