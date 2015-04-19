class MbracketsController < ApplicationController
  before_action :set_mbracket, only: [:show, :edit, :update, :destroy]

  # GET /mbrackets
  # GET /mbrackets.json
  def index
    @mbrackets = Mbracket.all
  end

  # GET /mbrackets/1
  # GET /mbrackets/1.json
  def show
    @team   = Team.all
    @rank1  = Team.rank1
    @rank2  = Team.rank2
    @rank3  = Team.rank3
    @rank4  = Team.rank4
    @rank5  = Team.rank5
    @rank6  = Team.rank6
    @rank7  = Team.rank7
    @rank8  = Team.rank8
    @rank9  = Team.rank9
    @rank10 = Team.rank10
    @rank11 = Team.rank11
    @rank12 = Team.rank12
    @rank13 = Team.rank13
    @rank14 = Team.rank14
    @rank15 = Team.rank15
    @rank16 = Team.rank16
  end


  # GET /mbrackets/new
  def new
    @mbracket = Mbracket.new
  end

  # GET /mbrackets/1/edit
  def edit
  end

  # POST /mbrackets
  # POST /mbrackets.json
  def create
    @mbracket = Mbracket.new(mbracket_params)

    respond_to do |format|
      if @mbracket.save
        format.html { redirect_to @mbracket, notice: 'Mbracket was successfully created.' }
        format.json { render :show, status: :created, location: @mbracket }
      else
        format.html { render :new }
        format.json { render json: @mbracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mbrackets/1
  # PATCH/PUT /mbrackets/1.json
  def update
    respond_to do |format|
      if @mbracket.update(mbracket_params)
        format.html { redirect_to @mbracket, notice: 'Mbracket was successfully updated.' }
        format.json { render :show, status: :ok, location: @mbracket }
      else
        format.html { render :edit }
        format.json { render json: @mbracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbrackets/1
  # DELETE /mbrackets/1.json
  def destroy
    @mbracket.destroy
    respond_to do |format|
      format.html { redirect_to mbrackets_url, notice: 'Mbracket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mbracket
      @mbracket = Mbracket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mbracket_params
      params.require(:mbracket).permit(:name)
    end
end
