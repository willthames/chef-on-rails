class EnvironmentsController < ApplicationController
  # GET /environments

  def index
    @environments = Spice.connection.search("datacentre_*")
  end

  # GET /environments/environmentname

  def show
    @environment = Spice.connection.search("role:datacentre*_" + params[:id])
  end

end
