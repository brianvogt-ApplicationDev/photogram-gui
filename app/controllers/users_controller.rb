class UsersController < ActionController::Base
def user_index
  render({:template => "photo_templates/users_index.html.erb"})
end  
end  