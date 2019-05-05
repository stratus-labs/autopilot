Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "pages#dash", as: :authenticated_root
  end

  devise_scope :user do
    get "join", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
    root to: 'pages#home'
  end

  get "/dash", to: "pages#dash", as: :dash
end
