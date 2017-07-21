Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users
   put 'student/:id/promote' => 'pages#promote', :as => "promote"
   put 'student/:id/demote' => 'pages#demote', :as => "demote"
   get 'student/' => 'pages#couple_generator', :as => 'generator'

   resources :couples

end
