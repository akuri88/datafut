class EquiposController < ApplicationController
	include Databasedotcom::Rails::Controller
	
	def show
		@equipo = Plantilla__c.find(params[:id])
	end
end
