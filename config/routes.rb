Rails.application.routes.draw do

	get 'hashtags/',         to: 'hashtags#index',     as: :hashtags
	get 'hashtags/:hashtag', to: 'hashtags#show',      as: :hashtag
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :posts do
    resources :comments
    post "/like", to: "likes#like_toggle"
  end


  resources :follows, only: [:create, :destroy]
  get '/timeline/:id' => 'posts#timeline'

  root 'welcome#index'
  get 'welcome/index'
  get '/emotions' => 'emotions#index'
  get '/emotions/:name' => 'emotions#emotion'
  get '/newsfeed' => 'posts#newsfeed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
