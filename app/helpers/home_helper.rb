module HomeHelper
###Trial code

def resource_name
    :user
    end
    
    def resource
    @resource ||= User.new
    end
    
    def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
    end

#End Trial Code
end
