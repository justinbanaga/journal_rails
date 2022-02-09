# inside config/routes.rb
Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
end
