AmusingCss::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :lessons

  root :to => 'lessons#new'
end
