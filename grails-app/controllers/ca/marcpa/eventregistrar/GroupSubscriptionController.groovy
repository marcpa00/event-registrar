package ca.marcpa.eventregistrar



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GroupSubscriptionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GroupSubscription.list(params), model:[groupSubscriptionInstanceCount: GroupSubscription.count()]
    }

    def show(GroupSubscription groupSubscriptionInstance) {
        respond groupSubscriptionInstance
    }

    def create() {
        respond new GroupSubscription(params)
    }

    @Transactional
    def save(GroupSubscription groupSubscriptionInstance) {
        if (groupSubscriptionInstance == null) {
            notFound()
            return
        }

        if (groupSubscriptionInstance.hasErrors()) {
            respond groupSubscriptionInstance.errors, view:'create'
            return
        }

        groupSubscriptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'groupSubscription.label', default: 'GroupSubscription'), groupSubscriptionInstance.id])
                redirect groupSubscriptionInstance
            }
            '*' { respond groupSubscriptionInstance, [status: CREATED] }
        }
    }

    def edit(GroupSubscription groupSubscriptionInstance) {
        respond groupSubscriptionInstance
    }

    @Transactional
    def update(GroupSubscription groupSubscriptionInstance) {
        if (groupSubscriptionInstance == null) {
            notFound()
            return
        }

        if (groupSubscriptionInstance.hasErrors()) {
            respond groupSubscriptionInstance.errors, view:'edit'
            return
        }

        groupSubscriptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GroupSubscription.label', default: 'GroupSubscription'), groupSubscriptionInstance.id])
                redirect groupSubscriptionInstance
            }
            '*'{ respond groupSubscriptionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GroupSubscription groupSubscriptionInstance) {

        if (groupSubscriptionInstance == null) {
            notFound()
            return
        }

        groupSubscriptionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GroupSubscription.label', default: 'GroupSubscription'), groupSubscriptionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupSubscription.label', default: 'GroupSubscription'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
