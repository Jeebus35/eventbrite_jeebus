class ApplicationController < ActionController::Base
    
  layout :set_layout
 def set_layout
    if current_user
      'profil'
    else
      'application'
    end
 end
end
