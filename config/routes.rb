Rails.application.routes.draw do
  root to: "cocktails#index"

  # resources :cocktails

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end

# Rails.application.routes.draw do
  # resources :restaurants do
    # resources :reviews, only: [ :index, :new, :create ]
  # end
  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
# end
