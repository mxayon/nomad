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
    post "/cities/:id/posts/new", to: "posts#new", as: "new_post"
    get "/cities/:id/posts", to: "cities#index", as: "city_posts"
    get "/cities/:id/posts/:id", to: "posts#show", as: "post"
    post "/cities/:id/posts", to: "posts#create"
    get "/cities/:id/posts/:post_id/edit", to: "posts#edit", as: "edit_post"
    patch "/cities/:id/posts/:post_id", to: "posts#update"
    delete "/cities/:id/posts/:post_id", to: "posts#destroy"
end
