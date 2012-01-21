class EquiposController < ApplicationController
	include Databasedotcom::Rails::Controller
	
	def show
		@equipo = Plantilla__c.find(params[:id])
		@jugadores = Registro__c.query("Plantilla__c = '#{params[:id]}' ORDER BY Portero__c DESC, Defensa__c DESC, Medio__c DESC, Delantero__c DESC")
		# @resumen = client.query("SELECT Id FROM Resumen_Partido__c WHERE Equipo__c = '#{params[:id]}'")
		# @partidos = Partido__c.query("Local__c IN '#{@resumen.Id}' OR Visita__c IN '#{@resumen.Id}' ORDER BY Fecha__c")
	end
end
