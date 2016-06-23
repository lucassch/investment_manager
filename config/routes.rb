Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  localized do
    root 'home#index'
    get 'omniauth/:provider' => 'omniauth#localized', as: :localized_omniauth

    devise_for :users, skip: :omniauth_callbacks

    resources :investments
  end
end
