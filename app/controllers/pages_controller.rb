class PagesController < ApplicationController
	include Databasedotcom::Rails::Controller
	
	def home
		@equipos = Plantilla__c.query("Torneo__r.Name = 'Clausura 2012' ORDER BY Puntos__c DESC, Diferencia__c DESC, Goles_A_Favor__c DESC, Goles_En_Contra__c DESC, Name ASC")
	end

end
