Rails.application.routes.draw do
 get("/users", {:controller => "application", :action => "user_index"}) 
 get("/insert_user_record", {:controller => "application", :action => "new_user"})

 get("/users/:any_username", {:controller => "application", :action => "user_details"})


 

 
 
 

 get("/photos", {:controller => "application", :action => "photo_index"})
  get("/photos/:any_photonumber", {:controller => "application", :action => "photo_details"})
end
