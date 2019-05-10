Rails.application.routes.draw do
  namespace :v1 do
    resources :articles, except: %i[create edit delete]
  end
end
