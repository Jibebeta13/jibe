Jibe::Application.routes.draw do
  
  resources :emails

  root :to => 'application#home'

  match 'new_dev_email' => 'emails#new_dev_email', :as => :new_dev_email
  match 'new_project_email' => 'emails#new_project_email', :as => :new_project_email

end