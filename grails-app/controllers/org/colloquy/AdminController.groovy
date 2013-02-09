package org.colloquy

class AdminController {
	def colloquyService
	def loadService
		
	def email = {}
	
	def emaildone = {
		def success = colloquyService.emailDb(params.email)
		return[email: params.email, success: success]
	}
	
	def index(){
		def filedates = loadService.getFiledates()
		def analysis = [:]
		return[filedates: filedates, analysis: analysis]
	}

	def download(){
		String f
		if (params.appFile == 'Get CSV'){
			f = "Applicant"
			loadService.dumpApplicantFile()
		}
		if (params.stuFile == 'Get CSV'){
			f = "Student"
			loadService.dumpStudentFile()
		}
		if (params.docFile == 'Get CSV'){
			f = "Document"
			loadService.dumpDocumentFile()
		}
		if (params.enrFile == 'Get CSV'){
			f = "Enrollment"
			loadService.dumpEnrollmentFile()
		}
		if (params.appFile == 'Tab SV'){
			f = "Applicant_t"
			loadService.dumpApplicantFileTab()
		}
		if (params.stuFile == 'Tab SV'){
			f = "Student_t"
			loadService.dumpStudentFileTab()
		}
		if (params.docFile == 'Tab SV'){
			f = "Document_t"
			loadService.dumpDocumentFileTab()
		}
		if (params.enrFile == 'Tab SV'){
			f = "Enrollment_t"
			loadService.dumpEnrollmentFileTab()
		}		
		def file = new File("${loadService.pickPath()}${f}.csv")
		if (file.exists()){
		   response.setContentType("application/octet-stream")
		   response.setHeader("Content-disposition", "filename=${file.name}")
		   response.outputStream << file.bytes
		}
		else{
			redirect(action: "index")
		}
	}	
}