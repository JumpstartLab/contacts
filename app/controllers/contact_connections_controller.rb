class ContactConnectionsController < ApplicationController
  # GET /contact_connections
  # GET /contact_connections.json
  def index
    @contact_connections = ContactConnection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_connections }
    end
  end

  # GET /contact_connections/1
  # GET /contact_connections/1.json
  def show
    @contact_connection = ContactConnection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_connection }
    end
  end

  # GET /contact_connections/new
  # GET /contact_connections/new.json
  def new
    @contact_connection = ContactConnection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_connection }
    end
  end

  # GET /contact_connections/1/edit
  def edit
    @contact_connection = ContactConnection.find(params[:id])
  end

  # POST /contact_connections
  # POST /contact_connections.json
  def create
    @contact_connection = ContactConnection.new(params[:contact_connection])

    respond_to do |format|
      if @contact_connection.save
        format.html { redirect_to @contact_connection, notice: 'Contact connection was successfully created.' }
        format.json { render json: @contact_connection, status: :created, location: @contact_connection }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_connections/1
  # PUT /contact_connections/1.json
  def update
    @contact_connection = ContactConnection.find(params[:id])

    respond_to do |format|
      if @contact_connection.update_attributes(params[:contact_connection])
        format.html { redirect_to @contact_connection, notice: 'Contact connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_connections/1
  # DELETE /contact_connections/1.json
  def destroy
    @contact_connection = ContactConnection.find(params[:id])
    @contact_connection.destroy

    respond_to do |format|
      format.html { redirect_to contact_connections_url }
      format.json { head :no_content }
    end
  end
end
