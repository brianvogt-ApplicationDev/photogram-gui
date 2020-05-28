Rails.application.routes.draw do
 get("/photos", {:controller => "photos", :action => "photo_index"}) 
end
