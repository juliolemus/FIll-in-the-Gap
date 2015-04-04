class ClothingController < ApplicationController
  def index
    @clothing = Clothing.all
  end

  def new
    @clothing = Clothing.new
  end

  def create
    @clothing = Clothing.new(clothing_params)
    respond_to do |format|
      if @clothing.save
        format.html { redirect_to @clothing, notice: 'clothing was successfully created.' }
        format.json { render :show, status: :created, location: @clothing }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def clothing_params
   params.require(:clothing).permit(:name, :description, :price, :size) 
  end

  
end
