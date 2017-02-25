Rails.application.routes.draw do
  root 'overview#index'
  get 'overview/index'
  get 'get_user', to: 'overview#get_user'
  get 'edit_user', to: 'overview#edit_user'
  post 'create_user', to: 'overview#create_user'
  patch 'save_me', to: 'overview#save_me'

  mount Flip::Engine => "/flip"
end
