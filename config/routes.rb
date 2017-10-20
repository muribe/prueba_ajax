Rails.application.routes.draw do
  get 'dashboard/index'

  get 'dashboard/edit'

  get 'dashboard/show'

  get 'pages/index'

  get 'pages/detail/:id', to: 'pages#detail', as: 'detail'

  post 'pages/complaint/:id', to: 'pages#complaint', as: 'complaint'

  root 'pages#index'

   
  
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
