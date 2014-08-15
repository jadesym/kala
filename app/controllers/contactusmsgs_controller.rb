class ContactusmsgsController < ApplicationController
  before_action :set_contactusmsg, only: [:show, :edit, :update, :destroy]

  # GET /contactusmsgs
  # GET /contactusmsgs.json
  def index
    @contactusmsgs = Contactusmsg.all
  end

  # GET /contactusmsgs/1
  # GET /contactusmsgs/1.json
  def show
  end

  # GET /contactusmsgs/new
  def new
    @contactusmsg = Contactusmsg.new
  end

  # GET /contactusmsgs/1/edit
  def edit
  end

  # POST /contactusmsgs
  # POST /contactusmsgs.json
  def create
    @contactusmsg = Contactusmsg.new(contactusmsg_params)

    respond_to do |format|
      if @contactusmsg.save
        format.html { redirect_to @contactusmsg, notice: 'Contactusmsg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contactusmsg }
      else
        format.html { render action: 'new' }
        format.json { render json: @contactusmsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactusmsgs/1
  # PATCH/PUT /contactusmsgs/1.json
  def update
    respond_to do |format|
      if @contactusmsg.update(contactusmsg_params)
        format.html { redirect_to @contactusmsg, notice: 'Contactusmsg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contactusmsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactusmsgs/1
  # DELETE /contactusmsgs/1.json
  def destroy
    @contactusmsg.destroy
    respond_to do |format|
      format.html { redirect_to contactusmsgs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactusmsg
      @contactusmsg = Contactusmsg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactusmsg_params
      params.require(:contactusmsg).permit(:first_name, :last_name, :user_id, :email, :phone_number)
    end
end
