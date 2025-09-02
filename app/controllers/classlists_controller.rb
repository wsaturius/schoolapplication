class ClasslistsController < ApplicationController
  before_action :set_classlist, only: %i[ show edit update destroy ]

  # GET /classlists or /classlists.json
  def index
    @classlists = Classlist.all
  end

  # GET /classlists/1 or /classlists/1.json
  def show
  end

  # GET /classlists/new
  def new
    @classlist = Classlist.new
  end

  # GET /classlists/1/edit
  def edit
  end

  # POST /classlists or /classlists.json
  def create
    @classlist = Classlist.new(classlist_params)

    respond_to do |format|
      if @classlist.save
        format.html { redirect_to @classlist, notice: "Classlist was successfully created." }
        format.json { render :show, status: :created, location: @classlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classlists/1 or /classlists/1.json
  def update
    respond_to do |format|
      if @classlist.update(classlist_params)
        format.html { redirect_to @classlist, notice: "Classlist was successfully updated." }
        format.json { render :show, status: :ok, location: @classlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classlists/1 or /classlists/1.json
  def destroy
    @classlist.destroy!

    respond_to do |format|
      format.html { redirect_to classlists_path, status: :see_other, notice: "Classlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classlist
      @classlist = Classlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classlist_params
      params.require(:classlist).permit(:student_id, :section_id)
    end
end
