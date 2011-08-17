class ApplicationController < ActionController::Base
  before_filter :spice_connect
  
  private
  
  def spice_connect
    ChefConfig.
    Spice.setup do |s|
      s.host = "chef.example.com"
      s.port = "5000"
      s.scheme = "https"
      s.client_name = "admin"
      s.key_file = "/path/to/keyfile.pem"
    end

    Spice.connect!
  done
    
    
  end
end
