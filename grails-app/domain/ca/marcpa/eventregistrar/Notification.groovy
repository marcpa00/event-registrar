package ca.marcpa.eventregistrar

class Notification {

    Date sendNotificationOn
    Date notificationSentDate
    Date dateLastChecked
    Boolean notificationSent = false
    String reasonNotSent

    static belongsTo = [ 'subscription' : Subscription ]

    static constraints = {
        sendNotificationOn(nullable: true)
        notificationSentDate(nullable: true)
        dateLastChecked(nullable: true)
        reasonNotSent(nullable: true)
    }

    String toString() {
        def notifcationString = "Notification for subscription '${subscription}' => "
        if (notificationSent) {
            notifcationString = notifcationString + "Sent on ${notificationSentDate} (scheduled for ${sendNotificationOn})."
        } else if (reasonNotSent){
            notifcationString = notifcationString + "Not sent because ${reasonNotSent}, last checked on ${dateLastChecked}."
        } else {
            notifcationString = notifcationString + "Not yet processed."
        }
        return notifcationString
    }
}
