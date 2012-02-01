class USersController < ApplicationController
  # GET /u_sers
  # GET /u_sers.json
  def index
    @u_sers = USer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @u_sers }
    end
  end

  # GET /u_sers/1
  # GET /u_sers/1.json
  def show
    @u_ser = USer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @u_ser }
    end
  end

  # GET /u_sers/new
  # GET /u_sers/new.json
  def new
    @u_ser = USer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @u_ser }
    end
  end

  # GET /u_sers/1/edit
  def edit
    @u_ser = USer.find(params[:id])
  end

  # POST /u_sers
  # POST /u_sers.json
  def create
    @u_ser = USer.new(params[:u_ser])

    respond_to do |format|
      if @u_ser.save
        format.html { redirect_to @u_ser, :notice => 'U ser was successfully created.' }
        format.json { render :json => @u_ser, :status => :created, :location => @u_ser }
      else
        format.html { render :action => "new" }
        format.json { render :json => @u_ser.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /u_sers/1
  # PUT /u_sers/1.json
  def update
    @u_ser = USer.find(params[:id])

    respond_to do |format|
      if @u_ser.update_attributes(params[:u_ser])
        format.html { redirect_to @u_ser, :notice => 'U ser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @u_ser.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /u_sers/1
  # DELETE /u_sers/1.json
  def destroy
    @u_ser = USer.find(params[:id])
    @u_ser.destroy

    respond_to do |format|
      format.html { redirect_to u_sers_url }
      format.json { head :no_content }
    end
  end
end
