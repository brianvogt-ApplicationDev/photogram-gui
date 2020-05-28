class PhotosController < ActionController::Base
def photo_index
  render({:template => "photo_templates/photo_index.html.erb"})
  
end

def photo_details 
  render({:template => "photo_templates/photo_detail.html.erb"})
end
end