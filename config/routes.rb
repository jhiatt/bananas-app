Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/bananas", to: "bananas#index"
  get "/bananas/new", to: "bananas#new"
  post "/bananas", to: 'bananas#create'
  get "/bananas/:id", to: 'bananas#show'
  get "/bananas/:id/edit", to: "bananas#edit"
  patch "/bananas/:id", to: "bananas#update"
  delete "/bananas/:id", to: 'bananas#destroy'

end
