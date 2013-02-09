package org.colloquy

class AdmissionsController {
	def colloquyService
	
	def searchall = {}
	
	def resultsall = {
		def sr = colloquyService.searchAllSugar(params)
		return [terms: params, sugar: sr.sugar]
	}
	
	def sugar = {
		def names = colloquyService.getSugar(params.id)
		return names
	}
		
    def index() { }
}
