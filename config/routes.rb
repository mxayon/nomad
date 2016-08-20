Rails.application.routes.draw do
    root to: "welcome#index"

    # new user routes
    get "/signup", to: "users#new", as: "new_user"
    post "/users", to: "users#create"
    get "/users/:id", to: "users#show", as: "user"

    #sessions routes
    get "/login", to: "sessions#new", as: "login"
    post "/login", to: "sessions#create"
    get "/logout", to: "sessions#destroy", as: "logout"

    #cities routes
    get "/cities", to: "cities#index", as: "cities"
    get "/cities/:id", to: "cities#show", as: "city"

    #post routes
    get "/users/:id/posts", to: "posts#index", as: "user_posts"
    get "/cities/:id/posts", to: "cities#index", as: "city_posts"
    post "/posts/new", to: "posts#new", as: "new_post"
    post "/posts", to: "posts#save"
end
