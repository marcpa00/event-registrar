package ca.marcpa.eventregistrar

class GroupSubscription extends Subscription {
    String contactFirstName
    String contactLastName
    String contactEmail

    Integer groupSize
    String guestList

    static constraints = {
        contactFirstName(blank: false)
        contactLastName(blank: false)
        contactEmail(email: true)
        groupSize()
        guestList()
    }

    String toString() {
        return super.toString() + ", for a group of ${groupSize}.  Group contact is ${contactFirstName}"
    }
}
