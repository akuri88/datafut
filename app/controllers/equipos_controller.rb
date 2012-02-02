class EquiposController < ApplicationController
	include Databasedotcom::Rails::Controller
	
	def show
		@equipo = Plantilla__c.find(params[:id])
		@jugadores = Registro__c.query("Plantilla__c = '#{params[:id]}' ORDER BY Portero__c DESC, Defensa__c DESC, Medio__c DESC, Delantero__c DESC")
		@partidos = Partido__c.client.query("SELECT Id, Fecha__c, " +
											 "Local__c, Local__r.Equipo__c, Local__r.Equipo__r.Nombre__c, " +
											 "Visita__c, Visita__r.Equipo__c, Visita__r.Equipo__r.Nombre__c, " +
											 "Goles_Local__c, Goles_Visita__c, " +
											 "Estadio__c, Estadio__r.Name " +
											 "FROM Partido__c " +
											 "WHERE ID_Local__c = '#{params[:id][0..14]}' OR ID_Visita__c = '#{params[:id][0..14]}' ORDER BY Fecha__c")
	end
end
