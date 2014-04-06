Nufamrsvp::Application.routes.draw do

  root 'subscribers#new'

  get '/thanks', to: 'subscribers#thanks'

  resources :subscribers

end
