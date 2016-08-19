Rails.application.routes.draw do
    root to: "welcome#index"

    # new user routes
    get "/users", to: "users#index", as: "users"
    get "/signup", to: "users#new", as: "new_user"
    post "/users", to: "users#create"
    get "/users/:id", to: "users#show", as: "user"

    #sessions routes
    get "/login", to: "sessions#new", as: "login"
    post "/login", to: "sessions#create"
    get "/logout", to: "sessions#destroy", as: "logout"
    
    #cities routes
    get "/cities", to: "cities#index"
    get "/cities/new", to: "cities#new", as: "new_city"
    post "/cities", to: "cities#create"
    get "/cities/:id", to: "cities#show", as: "city"
    get "/cities/:id/edit", to:"cities#edit", as: "edit_city"
    patch "/cities/:id", to: "cities#update"
    delete "/cities/:id", to: "cities#destroy"
end
