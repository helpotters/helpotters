Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
    mount Avo::Engine, at: Avo.configuration.root_path
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#resume'
end
