class NarrativesController < ApplicationController
  # GET /narratives
  # GET /narratives.json
  def index
    @narratives = Narrative.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @narratives }
    end
  end

  # GET /narratives/1
  # GET /narratives/1.json
  def show
    @narrative = Narrative.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @narrative }
    end
  end

  # GET /narratives/new
  # GET /narratives/new.json
  def new
    @narrative = Narrative.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @narrative }
    end
  end

  # GET /narratives/1/edit
  def edit
    @narrative = Narrative.find(params[:id])
  end

  # POST /narratives
  # POST /narratives.json
  def create
    @narrative = Narrative.new(params[:narrative])

    respond_to do |format|
      if @narrative.save
        format.html { redirect_to @narrative, notice: 'Narrative was successfully created.' }
        format.json { render json: @narrative, status: :created, location: @narrative }
      else
        format.html { render action: "new" }
        format.json { render json: @narrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /narratives/1
  # PUT /narratives/1.json
  def update
    @narrative = Narrative.find(params[:id])

    respond_to do |format|
      if @narrative.update_attributes(params[:narrative])
        format.html { redirect_to @narrative, notice: 'Narrative was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @narrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /narratives/1
  # DELETE /narratives/1.json
  def destroy
    @narrative = Narrative.find(params[:id])
    @narrative.destroy

    respond_to do |format|
      format.html { redirect_to narratives_url }
      format.json { head :no_content }
    end
  end
end
