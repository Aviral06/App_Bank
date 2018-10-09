Rails.application.routes.draw do
	resources :banks
	resources :accounts
	resources :users
	resources :branches
	resources :transactions
	resources :cards
	resources :loans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
