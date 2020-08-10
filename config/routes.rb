Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
  }
  namespace :admin do
    get 'contacts/index'
    get 'contacts/show'
    get 'schools/index'
    get 'genres/index'
    get 'menus/index'
    get 'menus/show'
  end

  devise_for :schools, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
  }
  namespace :public do
  end

  root to: 'public/homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
