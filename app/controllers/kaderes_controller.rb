class KaderesController < ApplicationController
  before_action :set_kadere, only: %i[ show edit update destroy ]
  

  # GET /kaderes or /kaderes.json

  
  def index
   
    @kaderes = Kadere.all
    @q =Kadere.ransack(params[:q])
    @kaderes = @q.result
  end


  # if params[:search].blank?
   #   redirect_to kaders_path and return
   # else
    #  @parameter =params[:search].downcase
    #  @kadere_results = Kaderes.all.where('name LIKE?',"%#{parameter}%")
   # end
 # end 

  # GET /kaderes/1 or /kaderes/1.json
  def show
  end

  # GET /kaderes/new
  def new
    @kadere = Kadere.new
  end

  # GET /kaderes/1/edit
  def edit
  end

  # POST /kaderes or /kaderes.json
  def create
    @kadere = Kadere.new(kadere_params)

    respond_to do |format|
      if @kadere.save
        format.html { redirect_to kadere_url(@kadere), notice: "Kadere was successfully created." }
        format.json { render :show, status: :created, location: @kadere }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kadere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kaderes/1 or /kaderes/1.json
  def update
    respond_to do |format|
      if @kadere.update(kadere_params)
        format.html { redirect_to kadere_url(@kadere), notice: "Kadere was successfully updated." }
        format.json { render :show, status: :ok, location: @kadere }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kadere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kaderes/1 or /kaderes/1.json
  def destroy
    @kadere.destroy

    respond_to do |format|
      format.html { redirect_to kaderes_url, notice: "Kadere was successfully destroyed." }
      format.json { head :no_content }
    end
  end
 


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kadere
      @kadere = Kadere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kadere_params
      params.require(:kadere).permit(:name, :phone, :email, :truck_number, :trailer_number, :carrier_id)
    end

    
end
