Rails.application.routes.draw do
  resources :thousands do
    member do
      get 'down'
    end
  end
end
