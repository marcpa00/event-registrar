package ca.marcpa.eventregistrar

class Subscription {

    // domain relationships
    static belongsTo = [ subscribed : Event, waitingLine : Event ]

    static constraints = {
        subscribed(nullable: true)
        waitingLine(nullable: true)
    }

    String toString() {
        if (subscribed) {
            return "Subscribed to ${subscribed?.name}"
        } else if (waitingLine) {
            return "Waiting in line for ${waitingLine?.name}"
        } else {
            return "Orphan subscription"
        }
    }
}
