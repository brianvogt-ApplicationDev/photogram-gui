Rails.application.routes.draw do
 get("/users", {:controller => "users", :action => "user_index"}) 

 get("/photos", {:controller => "photos", :action => "photo_index"}) 
 get("/photos/:any_photonumber", {:controller => "photos", :action => "photo_details"})
end
