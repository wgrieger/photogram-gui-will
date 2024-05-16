Rails.application.routes.draw do

get("/", {:controller=> "main", :action => "users"})

get("/users", {:controller=> "main", :action => "users"})

get("/photos", {:controller=> "main", :action => "photos"})

end
