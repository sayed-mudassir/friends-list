Rails.application.routes.draw do
  devise_for :users
  resources :friends do
    collection do
      delete 'delete_all'
      delete 'bulk_delete'
    end
  end
  #root 'home#index'
  root 'friends#index'
  resources :home , omly:[:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
