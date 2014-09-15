AmusingCss::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :lessons, only: [:show, :index]

  get 'basic' => 'static#basic'
  get 'about' => 'static#about'
  get 'examples' => 'static#examples'
  root :to => "lessons#index"
end
