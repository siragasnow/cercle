Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }
  namespace :admin do
    get 'homes/top' => 'homes/top'
    resources :genres, only: [:index, :create, :destroy]
    resources :menus, only: [:index, :edit, :update]
    get 'contacts/index'
    get 'contacts/show'
    get 'schools/index'
  end

  devise_for :schools, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
  }
  namespace :public do
    resources :schools, only: [:index, :show, :edit, :update,]
    resources :menus
  end

  root to: 'public/homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
