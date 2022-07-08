Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :admin do
    namespace :v1 do
      get 'home' => 'home#index'
    end
  end

  namespace :storefront do
    namespace :v1 do
    end
  end
end
