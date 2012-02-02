class JugadoresController < ApplicationController
	include Databasedotcom::Rails::Controller

	def show
		@jugador = Registro__c.find(params[:id])
		@partidos = Alineacion__c.client.query("SELECT Id, 
													   Resumen_Partido__r.Partido__r.Jornada__r.Numero__c, 
													   Resumen_Partido__r.Partido__r.Local__r.Equipo__r.Nombre__c, 
													   Resumen_Partido__r.Partido__r.Goles_Local__c, 
													   Resumen_Partido__r.Partido__r.Visita__r.Equipo__r.Nombre__c, 
													   Resumen_Partido__r.Partido__r.Goles_Visita__c, 
													   Titular__c, 
													   Entra_Cambio__c, 
													   Sale_Cambio__c, 
													   Minutos_Jugados__c 
													   FROM Alineacion__c
													   WHERE Jugador__c = '#{params[:id]}'")
	end

end
