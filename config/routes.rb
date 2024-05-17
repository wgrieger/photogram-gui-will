Rails.application.routes.draw do

get("/", {:controller=> "user", :action => "list_users"})

get("/users", {:controller=> "user", :action => "list_users"})

get("/photos", {:controller=> "main", :action => "photos"})

get("/photos/:id", {:controller=> "main", :action => "photo_details"})

end
