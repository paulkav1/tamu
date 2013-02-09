package org.colloquy

import org.springframework.dao.DataIntegrityViolationException

class DocumentDataController {
	def colloquyService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
         params.max = colloquyService.getMaxPaginate()	
        [documentDataInstanceList: DocumentData.list(params), documentDataInstanceTotal: DocumentData.count()]
    }

    def create() {
        [documentDataInstance: new DocumentData(params)]
    }

    def save() {
        def documentDataInstance = new DocumentData(params)
        if (!documentDataInstance.save(flush: true)) {
            render(view: "create", model: [documentDataInstance: documentDataInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'documentData.label', default: 'DocumentData'), documentDataInstance.id])
        redirect(action: "show", id: documentDataInstance.id)
    }

    def show() {
        def documentDataInstance = DocumentData.get(params.id)
        if (!documentDataInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentData.label', default: 'DocumentData'), params.id])
            redirect(action: "list")
            return
        }

        [documentDataInstance: documentDataInstance]
    }

    def edit() {
        def documentDataInstance = DocumentData.get(params.id)
        if (!documentDataInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentData.label', default: 'DocumentData'), params.id])
            redirect(action: "list")
            return
        }

        [documentDataInstance: documentDataInstance]
    }

    def update() {
        def documentDataInstance = DocumentData.get(params.id)
        if (!documentDataInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentData.label', default: 'DocumentData'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (documentDataInstance.version > version) {
                documentDataInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'documentData.label', default: 'DocumentData')] as Object[],
                          "Another user has updated this DocumentData while you were editing")
                render(view: "edit", model: [documentDataInstance: documentDataInstance])
                return
            }
        }

        documentDataInstance.properties = params

        if (!documentDataInstance.save(flush: true)) {
            render(view: "edit", model: [documentDataInstance: documentDataInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'documentData.label', default: 'DocumentData'), documentDataInstance.id])
        redirect(action: "show", id: documentDataInstance.id)
    }

    def delete() {
        def documentDataInstance = DocumentData.get(params.id)
        if (!documentDataInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentData.label', default: 'DocumentData'), params.id])
            redirect(action: "list")
            return
        }

        try {
            documentDataInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'documentData.label', default: 'DocumentData'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'documentData.label', default: 'DocumentData'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
	
	def sugar = {
		def names = colloquyService.getSugar(params.id)
		return names
	}	
}
