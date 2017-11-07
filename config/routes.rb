Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show]
  root to: "posts#index"
#   namespace :user do
#     resources :posts, only: [:index, :show, :edit, :update, :destroy]
#   end
  authenticated :user do
    resources :posts #, as: :authenticated_root
  end
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  devise_for :users
end
