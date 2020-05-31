class ApplicationController < ActionController::Base
  def user_index
  @all_users = User.all.order({ :created_at => :desc })

  render({:template => "photo_templates/users_index.html.erb"})
end  

def photo_index
   @all_photo = Photo.all.order({ :created_at => :desc })
   

  render({:template => "photo_templates/photo_index.html.erb"})
  
end

def photo_details 
  the_photo_number = params.fetch("any_photonumber").at(0)
  @photo= Photo.where({:id => the_photo_number})
  render({:template => "photo_templates/photo_detail.html.erb"})
end
end
