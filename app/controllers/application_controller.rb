class ApplicationController < ActionController::Base
  def user_index
  @all_users = User.all.order({ :created_at => :desc })

  render({:template => "photo_templates/users_index.html.erb"})
end  
end
