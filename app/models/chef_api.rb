class ChefAPI

  def self.connect
    if !@connection
      configfile = File.join(File.dirname(__FILE__),"..","..","config","chef.yml")
      if File.exists? configfile
        config = YAML.load_file(configfile)
        uri = URI.parse(config["uri"])
        Spice.setup do |s|
          s.host = uri.host
          s.port = uri.port
          s.scheme = uri.scheme
          s.client_name = config["client_name"]
          s.key_file = config["keyfile"]
        end
      end
      Spice.connect!
    end
    @connection = Spice.connection
  end

  def self.get(*args)
    self.connect
    JSON.parse(@connection.get(*args))
  end
    
  def self.find(conditions = {})
    path = '/' + self.name.to_s.downcase.pluralize
    if conditions[:name] 
      path = path + "/#{conditions[:name]}"
    end
    p self.methods
    self.get(path)
  end

  def self.all(*args)
    self.find(:all, *args)
  end

end
