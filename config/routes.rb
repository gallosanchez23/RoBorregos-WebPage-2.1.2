Rails.application.routes.draw do

  resources :public do
    collection do
      get 'members'
    end
  end

  namespace :private, module: 'private' do
    root 'users#index'

    devise_for :users, :controllers => { :sessions => 'private/sessions' }

    resources :users do
      collection do
        get :active_users
        get :inactive_users
      end
    end
  end

end
