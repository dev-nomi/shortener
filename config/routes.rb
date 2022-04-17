Rails.application.routes.draw do
  root 'pages#home'

  get ":stub", to: "short_link#show", constraints: { stub: /.{8}/ }, as: "short_link"
  post "short_link", to: "short_link#create", as: "create_short_link"
  get "/short_links", to: "short_link#index"

  get '*path', to: 'pages#home', via: :all
end
