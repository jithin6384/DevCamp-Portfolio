module ApplicationHelper
	def login_helper
    if current_user.is_a?(User)
      (link_to 'login', new_user_session_path) + "<br>".html_safe +

      (link_to 'Sign up',new_user_registration_path)
    else 
      link_to 'logout',destroy_user_session_path, method: :delete 
     
    end
	end

	def source_helper(layout_name)
    if session[:source]
    	 greeting = "Thanks for visiting me from  #{session[:source]} and you are in the #{layout_name} layout" 
      content_tag(:p,greeting,class: "source-greeting")
    end 
	end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Jithin R', 'All rights reserved'
  end
end
