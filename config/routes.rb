Rails.application.routes.draw do

	get 'hashtags/',         to: 'hashtags#index',     as: :hashtags
	get 'hashtags/:hashtag', to: 'hashtags#show',      as: :hashtag
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :posts do
    resources :comments
    post "/like", to: "likes#like_toggle"
  end

  root 'welcome#index'
  get 'welcome/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
