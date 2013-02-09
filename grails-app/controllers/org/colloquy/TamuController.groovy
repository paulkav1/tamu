package org.colloquy

class TamuController {
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def colloquyService
	
    def index() {
		def applicants = [:]; def documents = [:]; def students = [:]; def enrollments = [:]
		if (params.search == 'Search by Id'){
			applicants = Applicant.findAllByStudentIdLike(params.studentId)		
			documents = DocumentData.findAllByStudentIdLike(params.studentId)	
			students = Student.findAllByStudentIdLike(params.studentId)		
			enrollments = Enrollment.findAllByStudentIdLike(params.studentId)
		}
		if (params.search == 'Search by Name'){
			applicants = Applicant.findAllByLastNameLike(params.lastName)
			documents = DocumentData.findAllByLastNameLike(params.lastName)	
			students = Student.findAllByLastnameLike(params.lastName)		
			enrollments = Enrollment.findAllByLastnameLike(params.lastName)
		}
		return[applicants: applicants, documents: documents, students: students, enrollments: enrollments, id: params.studentId, name: params.lastName]
    }
	
	def results = {
		println params
		def applicants = [:]
		if (params.search == 'Search by Id'){
			applicants = Applicant.findAllByStudentIdLike(params.studentId)
			return[applicants: applicants, term: params.studentId]			
		}
		if (params.search == 'Search by Name'){
			applicants = Applicant.findAllByLastNameLike(params.lastName)
			return[applicants: applicants, term: params.lastName]
		}
	}
	
	def sugar = {
		def names = colloquyService.getSugar(params.id)
		return names
	}
	
	def searchall = {}
	
	def resultsall = {
		def sr = colloquyService.searchAllSugar(params)
		return [terms: params, sugar: sr.sugar]
	}

	def insert = {
		def searchParams = colloquyService.insertLead(params)
        redirect(action: "resultsall", params: searchParams)
	}
	
}
