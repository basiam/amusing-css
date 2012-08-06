AmusingCss::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :students

  resources :lessons, only: [:show, :index]

  root :to => "static#home"
end
