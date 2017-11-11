Rails.application.routes.draw do
  mount_devise_token_auth_for 'Manager', at: 'manager'

  mount_devise_token_auth_for 'Intern', at: 'intern'
  as :intern do
    # Define routes for Intern within this block.
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
