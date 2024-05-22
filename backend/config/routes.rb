Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  get '/api/test', to: 'application#test'

  # resourcesでRESTfulなルート定義を自動生成。indexアクションとcreateアクションのみ。
  # 2つのリソースは関連性を持っており、その関連性を表現するために「ネスト（入れ子）」という形式が用いられている。
  resources :rooms, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
