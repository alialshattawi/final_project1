class MemberInfosController < ApplicationController
  before_action :set_member_info, only: [:show, :edit, :update, :destroy]

  # GET /member_infos
  # GET /member_infos.json
  def index
    @member_infos = MemberInfo.all
  end

  # GET /member_infos/1
  # GET /member_infos/1.json
  def show
  end

  # GET /member_infos/new
  def new
    @member_info = current_user.build_member_info
   
  end

  # GET /member_infos/1/edit
  def edit
  end

  # POST /member_infos
  # POST /member_infos.json
  def create
      @member_info = current_user.build_member_info(member_info_params)

    respond_to do |format|
      if @member_info.save
        format.html { redirect_to @member_info, notice: 'Member info was successfully created.' }
        format.json { render :show, status: :created, location: @member_info }
      else
        format.html { render :new }
        format.json { render json: @member_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_infos/1
  # PATCH/PUT /member_infos/1.json
  def update
    respond_to do |format|
      if @member_info.update(member_info_params)
        format.html { redirect_to @member_info, notice: 'Member info was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_info }
      else
        format.html { render :edit }
        format.json { render json: @member_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_infos/1
  # DELETE /member_infos/1.json
  def destroy
    @member_info.destroy
    respond_to do |format|
      format.html { redirect_to member_infos_url, notice: 'Member info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_info
      @member_info = MemberInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_info_params
      params.require(:member_info).permit(:first_name, :last_name, :phone_number, :address, :email, :gender, :age, :latitude, :longitude)
    end
end
