Rails.application.routes.draw do

  devise_for :users
  root to: "posts#index"
  # BLOGGERS AREA
  authenticated :user do
    resources :posts
  end

  # GUEST AREA (this one should be lower than Bloggers area)
  resources :posts, only: [:index, :show]

  # LETTER OPENER
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
