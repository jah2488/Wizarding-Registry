



                   login GET    /login(.:format)               {:controller=>"devise/sessions", :action=>"new"}
                  logout GET    /logout(.:format)              {:controller=>"devise/sessions", :action=>"destroy"}
        new_user_session GET    /users/sign_in(.:format)       {:action=>"new", :controller=>"devise/sessions"}
            user_session POST   /users/sign_in(.:format)       {:action=>"create", :controller=>"devise/sessions"}
    destroy_user_session DELETE /users/sign_out(.:format)      {:action=>"destroy", :controller=>"devise/sessions"}
           user_password POST   /users/password(.:format)      {:action=>"create", :controller=>"devise/passwords"}
       new_user_password GET    /users/password/new(.:format)  {:action=>"new", :controller=>"devise/passwords"}
      edit_user_password GET    /users/password/edit(.:format) {:action=>"edit", :controller=>"devise/passwords"}
                         PUT    /users/password(.:format)      {:action=>"update", :controller=>"devise/passwords"}
cancel_user_registration GET    /users/cancel(.:format)        {:action=>"cancel", :controller=>"devise/registrations"}
       user_registration POST   /users(.:format)               {:action=>"create", :controller=>"devise/registrations"}
   new_user_registration GET    /users/sign_up(.:format)       {:action=>"new", :controller=>"devise/registrations"}
  edit_user_registration GET    /users/edit(.:format)          {:action=>"edit", :controller=>"devise/registrations"}
                         PUT    /users(.:format)               {:action=>"update", :controller=>"devise/registrations"}
                         DELETE /users(.:format)               {:action=>"destroy", :controller=>"devise/registrations"}
        new_user_session GET    /users/sign_in(.:format)       {:action=>"new", :controller=>"devise/sessions"}
                         POST   /users/sign_in(.:format)       {:action=>"create", :controller=>"devise/sessions"}
    destroy_user_session DELETE /users/sign_out(.:format)      {:action=>"destroy", :controller=>"devise/sessions"}
                         POST   /users/password(.:format)      {:action=>"create", :controller=>"devise/passwords"}
                         GET    /users/password/new(.:format)  {:action=>"new", :controller=>"devise/passwords"}
                         GET    /users/password/edit(.:format) {:action=>"edit", :controller=>"devise/passwords"}
                         PUT    /users/password(.:format)      {:action=>"update", :controller=>"devise/passwords"}
                         GET    /users/cancel(.:format)        {:action=>"cancel", :controller=>"registrations"}
                         POST   /users(.:format)               {:action=>"create", :controller=>"registrations"}
                         GET    /users/sign_up(.:format)       {:action=>"new", :controller=>"registrations"}
                         GET    /users/edit(.:format)          {:action=>"edit", :controller=>"registrations"}
                         PUT    /users(.:format)               {:action=>"update", :controller=>"registrations"}
                         DELETE /users(.:format)               {:action=>"destroy", :controller=>"registrations"}
               user_root        /user(.:format)                {:controller=>"home", :action=>"index"}
                   users GET    /users(.:format)               {:action=>"index", :controller=>"users"}
                         POST   /users(.:format)               {:action=>"create", :controller=>"users"}
                new_user GET    /users/new(.:format)           {:action=>"new", :controller=>"users"}
               edit_user GET    /users/:id/edit(.:format)      {:action=>"edit", :controller=>"users"}
                    user GET    /users/:id(.:format)           {:action=>"show", :controller=>"users"}
                         PUT    /users/:id(.:format)           {:action=>"update", :controller=>"users"}
                         DELETE /users/:id(.:format)           {:action=>"destroy", :controller=>"users"}
                  search GET    /search/index(.:format)        {:controller=>"search", :action=>"index"}
                   about GET    /about(.:format)               {:controller=>"home", :action=>"about"}
                 contact GET    /contact(.:format)             {:controller=>"home", :action=>"contact"}
                                /:name(.:format)               {:controller=>"users", :action=>"show"}
                    root        /                              {:controller=>"home", :action=>"index"}
                    page        /pages/*id                     {:controller=>"high_voltage/pages", :action=>"show"}

                
