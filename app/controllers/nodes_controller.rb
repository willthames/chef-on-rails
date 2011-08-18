class NodesController < ApplicationController
  # GET /nodes

  def index
    @nodes = Node.find(:all)
  end

  # GET /nodes/nodename

  def show
    @node = Node.find(:one, :name => params[:id])
  end

end
