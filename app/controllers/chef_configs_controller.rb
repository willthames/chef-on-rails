class ChefConfigsController < ApplicationController
  # GET /chef_configs
  # GET /chef_configs.xml
  def index
    @chef_configs = ChefConfig.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chef_configs }
    end
  end

  # GET /chef_configs/1
  # GET /chef_configs/1.xml
  def show
    @chef_config = ChefConfig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chef_config }
    end
  end

  # GET /chef_configs/new
  # GET /chef_configs/new.xml
  def new
    @chef_config = ChefConfig.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chef_config }
    end
  end

  # GET /chef_configs/1/edit
  def edit
    @chef_config = ChefConfig.find(params[:id])
  end

  # POST /chef_configs
  # POST /chef_configs.xml
  def create
    @chef_config = ChefConfig.new(params[:chef_config])

    respond_to do |format|
      if @chef_config.save
        format.html { redirect_to(@chef_config, :notice => 'Chef config was successfully created.') }
        format.xml  { render :xml => @chef_config, :status => :created, :location => @chef_config }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chef_config.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chef_configs/1
  # PUT /chef_configs/1.xml
  def update
    @chef_config = ChefConfig.find(params[:id])

    respond_to do |format|
      if @chef_config.update_attributes(params[:chef_config])
        format.html { redirect_to(@chef_config, :notice => 'Chef config was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chef_config.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_configs/1
  # DELETE /chef_configs/1.xml
  def destroy
    @chef_config = ChefConfig.find(params[:id])
    @chef_config.destroy

    respond_to do |format|
      format.html { redirect_to(chef_configs_url) }
      format.xml  { head :ok }
    end
  end
end
