Rails.application.routes.draw do
 get("/photos", {:controller => "photos", :action => "photo_index"}) 
 get("/photos/:any_usernumber", {:controller => "photos", :action => "photo_details"})
end
