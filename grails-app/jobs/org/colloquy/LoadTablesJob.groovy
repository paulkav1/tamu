package org.colloquy

class LoadTablesJob {
	def loadService
    static triggers = {
      simple repeatInterval: 500000l // execute job once in about 10 minutes
    }

    def execute() {
		loadService.loadFiles()
	}
}
