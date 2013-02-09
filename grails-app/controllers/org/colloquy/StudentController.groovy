package org.colloquy

import org.springframework.dao.DataIntegrityViolationException

class StudentController {
	def colloquyService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
         params.max = colloquyService.getMaxPaginate()	
        [studentInstanceList: Student.list(params), studentInstanceTotal: Student.count()]
    }

    def create() {
        [studentInstance: new Student(params)]
    }

    def save() {
        def studentInstance = new Student(params)
        if (!studentInstance.save(flush: true)) {
            render(view: "create", model: [studentInstance: studentInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'student.label', default: 'Student'), studentInstance.id])
        redirect(action: "show", id: studentInstance.id)
    }

    def show() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        [studentInstance: studentInstance]
    }

    def edit() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        [studentInstance: studentInstance]
    }

    def update() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (studentInstance.version > version) {
                studentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'student.label', default: 'Student')] as Object[],
                          "Another user has updated this Student while you were editing")
                render(view: "edit", model: [studentInstance: studentInstance])
                return
            }
        }

        studentInstance.properties = params

        if (!studentInstance.save(flush: true)) {
            render(view: "edit", model: [studentInstance: studentInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'student.label', default: 'Student'), studentInstance.id])
        redirect(action: "show", id: studentInstance.id)
    }

    def delete() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        try {
            studentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
	
	def sugar = {
		def names = colloquyService.getSugar(params.id)
		return names
	}	
}
