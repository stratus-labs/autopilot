Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "pages#dash", as: :authenticated_root
  end

  get "/dash", to: "pages#dash", as: :dash
end
