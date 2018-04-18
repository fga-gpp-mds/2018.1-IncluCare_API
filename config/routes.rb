Rails.application.routes.draw do
  resources :team_members
  resources :students
  mount_devise_token_auth_for 'TeamMember', at: 'auth'
end
