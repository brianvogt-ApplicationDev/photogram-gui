class PhotosController < ActionController::Base
def photo_index
  render({:template => "photo_templates/photo_index.html.erb"})
  
end

def photo_details 
  the_photo_number = params.fetch("any_photonumber").at(0)
  @photo= Photo.where({:id => the_photo_number})
  render({:template => "photo_templates/photo_detail.html.erb"})

end
end 