Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'projects', to: 'project#index', as: :projects
      post 'project', to: 'project#create', as: :create_project
      put 'project/:id', to: 'project#update', as: :update_project
      delete 'project/:id', to: 'project#delete', as: :delete_project

      get 'tasks', to: 'task#index', as: :tasks
      post 'task', to: 'task#create', as: :create_task
      put 'task/:id', to:'task#update', as: :update_task
      delete 'task/:id', to: 'task#delete', as: :delete_task
    end
  end

  mount_devise_token_auth_for 'Manager', at: 'manager'

  mount_devise_token_auth_for 'Intern', at: 'intern'
  as :intern do
    # Define routes for Intern within this block.
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
