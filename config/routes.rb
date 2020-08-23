Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }
  namespace :admin do
    get 'homes/top' => 'homes/top'
    resources :genres, only: [:index, :create, :destroy]
    resources :menus, only: [:index, :edit, :update]
    resources :schools, only: [:index, :show]
    resources :contacts, only: [:index, :edit, :update]
  end

  devise_for :schools, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
  }
  namespace :public do
    resources :schools, only: [:index, :show, :edit, :update]
    resources :menus do
      resource :favorites, only: [:create, :destroy]
    end
    resources :contacts, only: [:new, :create]
  end

  get 'public/contacts/confirm' => 'public/contacts#confirm'

  get 'public/favorites/index' => 'public/favorites#index'

  root to: 'public/homes#top'
  get 'public/homes/about' => 'public/homes#about'
  get 'public/homes/service' => 'public/homes#service'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
