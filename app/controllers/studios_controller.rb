class StudiosController < ApplicationController
	
	before_action :find_studio, only: [:show, :edit, :update, :destroy]

	def index 
		@studios = Studio.all
	end

	def show 

	end

	def new
		@studio = Studio.new
	end

	def create
		@studio = Studio.create(studio_params)
		redirect_to studio_path(@studio)
	end 

	private 
	def studio_params
		params.require(:studio).permit(:name, :instrument_id, :artist_id)
	end

	def find_studio
		@studio = Studio.find(params[:id])
	end

end
