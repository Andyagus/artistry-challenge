class InstrumentsController < ApplicationController
	before_action :find_instrument, only: [:show, :edit, :update, :destroy]
	
	def index 
		@instruments = Instrument.all
	end

	def show
	end

	private
	def find_instrument
		@instrument = Instrument.find(params[:id])
	end

end
