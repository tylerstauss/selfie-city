SelfieCity::Application.routes.draw do

	scope :api do
    get "/photos(.:format)" => "photos#index"
    get "/photos/:id(.:format)" => "photos#show"
    get "/photos/city/:id(.:format)" => "city#show"
  end

  resources :city, :photos, :comments
  root to: 'home#index'

end
