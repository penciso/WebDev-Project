Rails.application.routes.draw do
	resources :products
	resources :inventories
	get '/inventory/index' => 'inventory#index'
	resources :suppliers

	get'/sales/:id/sold' => 'sales#sold'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
