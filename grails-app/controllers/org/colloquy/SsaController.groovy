package org.colloquy
	
class SsaController {
	def colloquyService
	
    def index() { }
	
	def sugar = {
		def names = colloquyService.getSugar(params.id)
		return names
	}
	
	def plan = {
		def sg = colloquyService.getSugar(params.id)
		def dp = colloquyService.getPlan(params.id)
		def tr = colloquyService.getTranscript(params.id)
		def dt = [:]
		dt.putAll(sg)
		dt.putAll(dp)
		dt.putAll(tr)
		def dif = dp - tr
		return dt
	}
	
	def active = {
        params.max = colloquyService.getMaxPaginate()	
		def act = colloquyService.getActive(params)
	}
		
}
