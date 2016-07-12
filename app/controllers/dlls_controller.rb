class DllsController < ApplicationController
  before_action :set_dll, only: [:show, :edit, :update, :destroy]

  # GET /dlls
  # GET /dlls.json
  def index
    @dlls = Dll.all
  end

  # GET /dlls/1
  # GET /dlls/1.json
  def show
  end

  # GET /dlls/new
  def new
    @dll = Dll.new
  end

  # GET /dlls/1/edit
  def edit
  end

  # POST /dlls
  # POST /dlls.json
  def create
    @dll = Dll.new(dll_params)

    respond_to do |format|
      if @dll.save
        format.html { redirect_to @dll, notice: 'Dll was successfully created.' }
        format.json { render :show, status: :created, location: @dll }
      else
        format.html { render :new }
        format.json { render json: @dll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dlls/1
  # PATCH/PUT /dlls/1.json
  def update
    respond_to do |format|
      if @dll.update(dll_params)
        format.html { redirect_to @dll, notice: 'Dll was successfully updated.' }
        format.json { render :show, status: :ok, location: @dll }
      else
        format.html { render :edit }
        format.json { render json: @dll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dlls/1
  # DELETE /dlls/1.json
  def destroy
    @dll.destroy
    respond_to do |format|
      format.html { redirect_to dlls_url, notice: 'Dll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dll
      @dll = Dll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dll_params
      params.require(:dll).permit(:name, :spec_path)
    end
end
