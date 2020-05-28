class PhotosController < ActionController::Base
def photo_index
  render({:template => "photo_templates/photo_index.html.erb"})
  
end
end