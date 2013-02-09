package org.colloquy

import org.springframework.dao.DataIntegrityViolationException

class ApplicantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def colloquyService
	//def authenticateService
	
    def index() {
		//def user = authenticateService.userDomain()
		//user = User.get(user.id)
		redirect(action:'list')
    }

    def list() {
         params.max = colloquyService.getMaxPaginate()	
        [applicantInstanceList: Applicant.list(params), applicantInstanceTotal: Applicant.count()]
    }

    def create() {
        [applicantInstance: new Applicant(params)]
    }

    def save() {
        def applicantInstance = new Applicant(params)
        if (!applicantInstance.save(flush: true)) {
            render(view: "create", model: [applicantInstance: applicantInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'applicant.label', default: 'Applicant'), applicantInstance.id])
        redirect(action: "show", id: applicantInstance.id)
    }

    def show() {
        def applicantInstance = Applicant.get(params.id)
        if (!applicantInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
            return
        }
        [applicantInstance: applicantInstance]
    }
	
    def showDocs() {
        def applicantInstance = Applicant.get(params.id)
        if (!applicantInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
            return
        }
        [applicantInstance: applicantInstance]
    }

    def edit() {
        def applicantInstance = Applicant.get(params.id)
        if (!applicantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
            return
        }

        [applicantInstance: applicantInstance]
    }

    def update() {
        def applicantInstance = Applicant.get(params.id)
        if (!applicantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (applicantInstance.version > version) {
                applicantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'applicant.label', default: 'Applicant')] as Object[],
                          "Another user has updated this Applicant while you were editing")
                render(view: "edit", model: [applicantInstance: applicantInstance])
                return
            }
        }

        applicantInstance.properties = params

        if (!applicantInstance.save(flush: true)) {
            render(view: "edit", model: [applicantInstance: applicantInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'applicant.label', default: 'Applicant'), applicantInstance.id])
        redirect(action: "show", id: applicantInstance.id)
    }

    def delete() {
        def applicantInstance = Applicant.get(params.id)
        if (!applicantInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
            return
        }

        try {
            applicantInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
	
	def sugar = {
		def names = colloquyService.getSugar(params.id)
		return names
	}
	
    def updateCid() {
        def applicantInstance = Applicant.get(params.id)
        if (!applicantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicant.label', default: 'Applicant'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (applicantInstance.version > version) {
                applicantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'applicant.label', default: 'Applicant')] as Object[],
                          "Another user has updated this Applicant while you were editing")
                render(view: "edit", model: [applicantInstance: applicantInstance])
                return
            }
        }

        applicantInstance.properties.colloquyId = params.colloquyId

        if (!applicantInstance.save(flush: true)) {
            render(view: "edit", model: [applicantInstance: applicantInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'applicant.label', default: 'Applicant'), applicantInstance.id])
        redirect(action: "show", id: applicantInstance.id)
    }	
}