Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # デフォルトではidがパラメータとして使われる。slugをパラメータとして使用するためには、pram: :slugオプションを追加する必要あり
  scope :api do
    resources :articles, only: [:create, :show, :update, :destroy], param: :slug
  end
end
