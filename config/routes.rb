Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'user/apartments/:user_id' => 'apartments#show_user_apartments' 
end
