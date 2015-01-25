package ca.marcpa.eventregistrar



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IndividualSubscriptionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond IndividualSubscription.list(params), model:[individualSubscriptionInstanceCount: IndividualSubscription.count()]
    }

    def show(IndividualSubscription individualSubscriptionInstance) {
        respond individualSubscriptionInstance
    }

    def create() {
        respond new IndividualSubscription(params)
    }

    @Transactional
    def save(IndividualSubscription individualSubscriptionInstance) {
        if (individualSubscriptionInstance == null) {
            notFound()
            return
        }

        if (individualSubscriptionInstance.hasErrors()) {
            respond individualSubscriptionInstance.errors, view:'create'
            return
        }

        individualSubscriptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'individualSubscription.label', default: 'IndividualSubscription'), individualSubscriptionInstance.id])
                redirect individualSubscriptionInstance
            }
            '*' { respond individualSubscriptionInstance, [status: CREATED] }
        }
    }

    def edit(IndividualSubscription individualSubscriptionInstance) {
        respond individualSubscriptionInstance
    }

    @Transactional
    def update(IndividualSubscription individualSubscriptionInstance) {
        if (individualSubscriptionInstance == null) {
            notFound()
            return
        }

        if (individualSubscriptionInstance.hasErrors()) {
            respond individualSubscriptionInstance.errors, view:'edit'
            return
        }

        individualSubscriptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'IndividualSubscription.label', default: 'IndividualSubscription'), individualSubscriptionInstance.id])
                redirect individualSubscriptionInstance
            }
            '*'{ respond individualSubscriptionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(IndividualSubscription individualSubscriptionInstance) {

        if (individualSubscriptionInstance == null) {
            notFound()
            return
        }

        individualSubscriptionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'IndividualSubscription.label', default: 'IndividualSubscription'), individualSubscriptionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'individualSubscription.label', default: 'IndividualSubscription'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
