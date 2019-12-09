Rails.application.routes.draw do
  devise_for :admins, defaults: { format: :json }, controllers: { sessions: 'api/admin/sessions' }, 
    skip: [:registrations, :passwords]

  namespace :api do
    namespace :reviews do
      get :testowo
    end
  end
end
