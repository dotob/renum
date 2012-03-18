class RechnungenController < ApplicationController
  # GET /rechnungen
  # GET /rechnungen.json
  def index
    @rechnungen = Rechnung.all
    @rechnung = Rechnung.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rechnungen }
    end
  end

  # GET /rechnungen/1
  # GET /rechnungen/1.json
  def show
    @rechnung = Rechnung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rechnung }
    end
  end

  # GET /rechnungen/new
  # GET /rechnungen/new.json
  def new
    @rechnung = Rechnung.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rechnung }
    end
  end

  # GET /rechnungen/1/edit
  def edit
    @rechnung = Rechnung.find(params[:id])
  end

  # POST /rechnungen
  # POST /rechnungen.json
  def create
    @rechnung = Rechnung.new(params[:rechnung])

    respond_to do |format|
      if @rechnung.save
        format.html { redirect_to @rechnung, notice: 'Rechnung was successfully created.' }
        format.json { render json: @rechnung, status: :created, location: @rechnung }
      else
        format.html { render action: "new" }
        format.json { render json: @rechnung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rechnungen/1
  # PUT /rechnungen/1.json
  def update
    @rechnung = Rechnung.find(params[:id])

    respond_to do |format|
      if @rechnung.update_attributes(params[:rechnung])
        format.html { redirect_to @rechnung, notice: 'Rechnung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rechnung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rechnungen/1
  # DELETE /rechnungen/1.json
  def destroy
    @rechnung = Rechnung.find(params[:id])
    @rechnung.destroy

    respond_to do |format|
      format.html { redirect_to rechnungen_url }
      format.json { head :no_content }
    end
  end
end
