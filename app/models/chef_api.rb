class ChefAPI

  def initialize
    if !Spice.connection
      Spice.setup do |s|
        s.host = "chef.example.com"
        s.port = "5000"
        s.scheme = "https"
        s.client_name = "admin"
        s.key_file = "/path/to/keyfile.pem"
      end
      Spice.connect!
    end
  end

  def find(conditions = {})
    path = '/' + self.class.downcase.pluralize
    if conditions[:name] 
      path = path + "/#{conditions[:name]"
    end
  end


end
