class ChefAPI

  def initialize
    if !Spice.connection
      configfile = File.join(__FILE__,"..","..","config","spice.properties")
      if File.exists? configfile
        config = YAML.load_file(configfile)
        uri = URI.parse(config[:uri])
        Spice.setup do |s|
          s.host = uri.host
          s.port = uri.port
          s.scheme = uri.scheme
          s.client_name = config[:client_name]
          s.key_file = config[:keyfile]
        end
        Spice.connect!
      end
    end
  end

  def find(conditions = {})
    path = '/' + self.class.downcase.pluralize
    if conditions[:name] 
      path = path + "/#{conditions[:name]"
    end
  end


end
