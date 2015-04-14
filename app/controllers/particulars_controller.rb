class ParticularsController < ApplicationController
  before_action :set_particular, only: [:show, :edit, :update, :destroy]

  # GET /particulars
  # GET /particulars.json
  def index
    @particulars = Particular.all
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "file_name" ,template: 'particulars/index.html.erb'
      end
    end
end

# web page to generate the pdf file
def pdfindex
   @particulare = Particular.all
    respond_to do |format|
      format.html #generate html format 
      format.pdf do  #generate the pdf format  web url must end with .pdf format
        render :pdf => "file_name" ,template: 'particulars/pdfindex.html.erb'
        

      end
    end

  end

  # GET /particulars/1
  # GET /particulars/1.json
  def show  # for displaying single item with an id 
      unless @particular.quantity.nil? && @particular.rate.nil?
      @amount=(@particular.quantity)*(@particular.rate)
    end

end

  # GET /particulars/new
  def new
    @particular = Particular.new
  end

  # GET /particulars/1/edit
  def edit
  end

  # POST /particulars
  # POST /particulars.json
  def create
    @particular = Particular.new(particular_params)

    respond_to do |format|
      if @particular.save
        format.html { redirect_to particulars_path, notice: 'New item added successfully.' }
        format.json { render :show, status: :created, location: @particular }
      else
        format.html { render :new }
        format.json { render json: @particular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /particulars/1
  # PATCH/PUT /particulars/1.json
  def update
    respond_to do |format|
      if @particular.update(particular_params)
        format.html { redirect_to @particular, notice: 'Particular was successfully updated.' }
        format.json { render :show, status: :ok, location: @particular }
      else
        format.html { render :edit }
        format.json { render json: @particular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /particulars/1
  # DELETE /particulars/1.json
  def destroy
    @particular.destroy
    respond_to do |format|
      format.html { redirect_to particulars_url, notice: 'Particular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    #private method for extra security 
    def set_particular
      @particular = Particular.find(params[:id])
    end

    # whitelisting the parameter and only allowing the parameters required
    # in rails 4
    def particular_params
      params.require(:particular).permit(:itemname, :quantity, :rate)
    end
end
