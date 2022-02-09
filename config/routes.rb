# inside config/routes.rb
Rails.application.routes.draw do
  get 'users/new'
  get 'home/index'
  root to: 'home#index'
end
