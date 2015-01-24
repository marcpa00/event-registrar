package ca.marcpa.eventregistrar

class Event {

    String name
    String description
    String location
    Date postEventOn
    Date eventOccursOn

    String contactFirstName
    String contactLastName
    String contactEmail

    Integer maximumCapacity = 30 //defaults to 30 "seats" by event

    // domain relationships
    static hasMany = [
            // people registered to attend the event
            subscriptions : Subscription,
            // waiting list
            pendingSubscriptions : Subscription
    ]
    static mappedBy = [ subscriptions: 'subscribed', pendingSubscriptions: 'waitingLine' ]

    static constraints = {
        name(blank: false)
        description()
        location()
        postEventOn(blank: false)
        eventOccursOn(blank: false)
        maximumCapacity()
        contactFirstName(blank: false)
        contactLastName(blank: false)
        contactEmail(email: true)
        subscriptions(nullable: true)
        pendingSubscriptions(nullable: true)
    }

    String toString() {
        return "${name} : ${description} at ${location} on ${eventOccursOn}"
    }
}
