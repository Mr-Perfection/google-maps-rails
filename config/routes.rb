Rails.application.routes.draw do
  
  get 'posts/create'

  get 'posts/show'

  get 'posts/destroy'

  root 'static_pages#home'
  get 'static_pages/home'
  resources :posts, only: [:create, :show, :destroy, :edit, :update]
end
