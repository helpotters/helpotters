Rails.application.routes.draw do
  devise_for :admins
  mount Avo::Engine, at: Avo.configuration.root_path
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#resume'
end
