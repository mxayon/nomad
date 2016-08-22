Rails.application.routes.draw do
    root to: "welcome#index"

    # new user routes
    get "/signup", to: "users#new", as: "new_user"
    post "/users", to: "users#create"
    get "/users/:id", to: "users#show", as: "user"
    get "/users/:id/edit", to: "users#edit", as: "edit_user"
    patch "/users/:id", to: "users#update"

    #sessions routes
    get "/login", to: "sessions#new", as: "login"
    post "/login", to: "sessions#create"
    get "/logout", to: "sessions#destroy", as: "logout"

    #cities routes
    get "/cities", to: "cities#index", as: "cities"
    get "/cities/:id", to: "cities#show", as: "city"

    #post routes
    # resources :cities, shallow: true, only: [:get, :index] do
    #   resources :posts
    # end

    get "/users/:user_id/posts", to: "posts#index", as: "user_posts"
    get "/cities/:city_id/posts/new", to: "posts#new", as: "new_post"
    get "/cities/:city_id/posts", to: "cities#index", as: "city_posts"
    get "/cities/:city_id/posts/:id", to: "posts#show", as: "post"
    post "/cities/:city_id/posts", to: "posts#create"
    get "/cities/:city_id/posts/:id/edit", to: "posts#edit", as: "edit_post"
    patch "/posts/:id", to: "posts#update"
    delete "/posts/:id", to: "posts#destroy"
end
