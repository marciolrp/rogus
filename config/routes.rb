Rogus::Application.routes.draw do
  get "dashboard/index"

  root :to => 'dashboard#index'
  
  resources :departamentos
  
  resources :funcionarios

  match 'email' => 'funcionarios#email'
  
  match 'send_email' => 'funcionarios#send_email'

end
