Rails.application.routes.draw do
  devise_for :admins

  authenticate :admin do
    mount AhoyCaptain::Engine => "/ahoy_captain"
    mount Avo::Engine, at: Avo.configuration.root_path
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#resume"
end
