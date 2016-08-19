Rails.application.routes.draw do
    root to: "welcome#index"

    get "/users", to: "users#index", as: "users"
    get "/signup", to: "users#new", as: "new_user"
    post "users", to: "users#create"
end
