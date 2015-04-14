class DetailsController < ApplicationController

	def homepage
	end
 
 	
	def new
		@detail=Detail.new
	end

	def create
		@detail=Detail.create(params.require(:detail).permit(:from,:to,:billno,:invoicedate,:duedate))
		if @detail.save 
			redirect_to new_particular_path
		else 
			render new_detail_path
		end
	end

	def index
		@details=Detail.all
	end


	def show
		@count=Detail.count
		@count1=Detail.all.count
		@detail= Detail.find(params[:id])
	end

	def showpdf

	@showdetail=Detail.last
	respond_to do |format|
    format.html
    format.pdf do
       render :pdf => "file_name" ,template: 'details/showpdf.html.erb'
      end
    end

	end

	

	


end



