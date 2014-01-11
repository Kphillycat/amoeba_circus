class AmoebasController < ApplicationController
	def index
		@amoebas = Amoeba.all
	end

	def show
		@amoeba = Amoeba.find(params[:id])
	end

	def split
		@amoeba = Amoeba.find(params[:amoeba_id])
		@amoeba.split("bob","gary")
		redirect_to "/amoebas"
	end
end
