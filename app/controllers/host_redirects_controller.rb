class HostRedirectsController < ApplicationController
  before_action :set_host_redirect, only: [:show, :edit, :update, :destroy]

  # GET /host_redirects
  # GET /host_redirects.json
  def index
    @host_redirects = HostRedirect.all
  end

  # GET /host_redirects/1
  # GET /host_redirects/1.json
  def show
  end

  # GET /host_redirects/new
  def new
    @host_redirect = HostRedirect.new
  end

  # GET /host_redirects/1/edit
  def edit
  end

  # POST /host_redirects
  # POST /host_redirects.json
  def create
    @host_redirect = HostRedirect.new(host_redirect_params)

    respond_to do |format|
      if @host_redirect.save
        format.html { redirect_to @host_redirect, notice: 'Host redirect was successfully created.' }
        format.json { render :show, status: :created, location: @host_redirect }
      else
        format.html { render :new }
        format.json { render json: @host_redirect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_redirects/1
  # PATCH/PUT /host_redirects/1.json
  def update
    respond_to do |format|
      if @host_redirect.update(host_redirect_params)
        format.html { redirect_to @host_redirect, notice: 'Host redirect was successfully updated.' }
        format.json { render :show, status: :ok, location: @host_redirect }
      else
        format.html { render :edit }
        format.json { render json: @host_redirect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_redirects/1
  # DELETE /host_redirects/1.json
  def destroy
    @host_redirect.destroy
    respond_to do |format|
      format.html { redirect_to host_redirects_url, notice: 'Host redirect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host_redirect
      @host_redirect = HostRedirect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_redirect_params
      params.require(:host_redirect).permit(:orig, :dest)
    end
end
