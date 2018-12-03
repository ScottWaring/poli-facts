Rails.application.routes.draw do
  get '/find_by/:query', to: 'search#show'
end
