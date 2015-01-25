package ca.marcpa.eventregistrar

class IndividualSubscription extends Subscription {

    String subscriberFirstName
    String subscriberLastName
    String subscriberEmail

    static constraints = {
        subscriberFirstName(blank: false)
        subscriberLastName(blank: false)
        subscriberEmail(email: true)
    }

    String getEmail() {
        return subscriberEmail
    }
    void setEmail(String dummy) {}

    String toString() {
        return super.toString() + ", for ${subscriberFirstName} ${subscriberLastName}"
    }
}
