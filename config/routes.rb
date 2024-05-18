Rails.application.routes.draw do

get("/", {:controller=> "user", :action => "list_users"})

post("/add_user", {:controller => "user", :action=> "add_user"})

post("/:username/update_user", {:controller => "user", :action=> "update_user"})


get("/users", {:controller=> "user", :action => "list_users"})

get("/users/:username", {:controller=> "user", :action => "user_details"})

get("/photos", {:controller=> "main", :action => "photos"})

get("/photos/:id", {:controller=> "main", :action => "photo_details"})

post("/photos/:id/update_photo", {:controller=> "main", :action => "photo_update"})

get("/photos/:id/delete_photo", {:controller=> "main", :action => "delete_img"})

post("/photos/:id/new_comment", {:controller=> "main", :action=> "add_comment"})

post("/photos/new_photo", {:controller=> "main", :action=> "new_photo"})

end
