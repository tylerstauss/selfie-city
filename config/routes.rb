SelfieCity::Application.routes.draw do

	scope :api do
    get "/photos(.:format)" => "photos#index"
    get "/photos/:id(.:format)" => "photos#show"
  end

  resources :city 

  root to: 'home#index'

end
