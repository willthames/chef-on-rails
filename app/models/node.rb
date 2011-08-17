class Node < ChefAPI

  def all
    Spice.connection.get '/nodes'
  end
 
  def find_by_name(name)
    Spice.connection.get "/nodes/#{name}"
  end
  
end
