Rails.application.routes.draw do
    root to: "welcome#index"

    # new user routes
    get "/users", to: "users#index", as: "users"
    get "/signup", to: "users#new", as: "new_user"
    post "/users", to: "users#create"
    get "/users/:id", to: "users#show", as: "user"

    #sessions routes
    get "/login", to: "sessions#new"
end
