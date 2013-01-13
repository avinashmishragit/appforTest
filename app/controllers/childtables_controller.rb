class ChildtablesController < ApplicationController
  # GET /childtables
  # GET /childtables.json
  def index
    @childtables = Childtable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @childtables }
    end
  end

  # GET /childtables/1
  # GET /childtables/1.json
  def show
    @childtable = Childtable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @childtable }
    end
  end

  # GET /childtables/new
  # GET /childtables/new.json
  def new
    @childtable = Childtable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @childtable }
    end
  end

  # GET /childtables/1/edit
  def edit
    @childtable = Childtable.find(params[:id])
  end

  # POST /childtables
  # POST /childtables.json
  def create
    @childtable = Childtable.new(params[:childtable])

    respond_to do |format|
      if @childtable.save
        format.html { redirect_to @childtable, notice: 'Childtable was successfully created.' }
        format.json { render json: @childtable, status: :created, location: @childtable }
      else
        format.html { render action: "new" }
        format.json { render json: @childtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /childtables/1
  # PUT /childtables/1.json
  def update
    @childtable = Childtable.find(params[:id])

    respond_to do |format|
      if @childtable.update_attributes(params[:childtable])
        format.html { redirect_to @childtable, notice: 'Childtable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @childtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childtables/1
  # DELETE /childtables/1.json
  def destroy
    @childtable = Childtable.find(params[:id])
    @childtable.destroy

    respond_to do |format|
      format.html { redirect_to childtables_url }
      format.json { head :no_content }
    end
  end
end
