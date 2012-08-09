AmusingCss::Application.routes.draw do

  resources :answers, only: [:create, :update]

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :students

  resources :lessons, only: [:show, :index]

  match 'basic' => 'static#basic'
  match 'examples' => 'static#examples'
  root :to => "static#home"
end
