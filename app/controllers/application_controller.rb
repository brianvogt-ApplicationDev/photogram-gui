class ApplicationController < ActionController::Base
  def user_index
  @all_users = User.all.order({ :created_at => :desc })

  render({:template => "photo_templates/users_index.html.erb"})
end  

def new_user
  render({:template => "photo_templates/user_new.html.erb"})
end  

def photo_index
   @all_photo = Photo.all.order({ :created_at => :desc })
   

  render({:template => "photo_templates/photo_index.html.erb"})
  
end


 def user_details
    # Parameters: {"any_username"=>"augustine"}
    the_un = params.fetch("any_username")
    matches = User.where({ :username => the_un })
    @the_user = matches.at(0)
    user_id= @the_user.id

    @photos_match = Photo.where({ :owner_id => @the_user })
     

    render({ :template => "photo_templates/user_detail.html.erb"})
  end

  def photo_details
    the_p = params.fetch("any_photonumber")
    mathes = Photo.where({ :id => the_p })
    @photo = mathes.at(0)
    render({ :template => "photo_templates/photo_detail.html.erb"})

  
  end
end
