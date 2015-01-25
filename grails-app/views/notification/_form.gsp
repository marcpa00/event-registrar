<%@ page import="ca.marcpa.eventregistrar.Notification" %>



<div class="fieldcontain ${hasErrors(bean: notificationInstance, field: 'sendNotificationOn', 'error')} ">
	<label for="sendNotificationOn">
		<g:message code="notification.sendNotificationOn.label" default="Send Notification On" />
		
	</label>
	<g:datePicker name="sendNotificationOn" precision="day"  value="${notificationInstance?.sendNotificationOn}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: notificationInstance, field: 'notificationSentDate', 'error')} ">
	<label for="notificationSentDate">
		<g:message code="notification.notificationSentDate.label" default="Notification Sent Date" />
		
	</label>
	<g:datePicker name="notificationSentDate" precision="day"  value="${notificationInstance?.notificationSentDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: notificationInstance, field: 'dateLastChecked', 'error')} ">
	<label for="dateLastChecked">
		<g:message code="notification.dateLastChecked.label" default="Date Last Checked" />
		
	</label>
	<g:datePicker name="dateLastChecked" precision="day"  value="${notificationInstance?.dateLastChecked}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: notificationInstance, field: 'reasonNotSent', 'error')} ">
	<label for="reasonNotSent">
		<g:message code="notification.reasonNotSent.label" default="Reason Not Sent" />
		
	</label>
	<g:textField name="reasonNotSent" value="${notificationInstance?.reasonNotSent}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: notificationInstance, field: 'notificationSent', 'error')} ">
	<label for="notificationSent">
		<g:message code="notification.notificationSent.label" default="Notification Sent" />
		
	</label>
	<g:checkBox name="notificationSent" value="${notificationInstance?.notificationSent}" />

</div>

<div class="fieldcontain ${hasErrors(bean: notificationInstance, field: 'subscription', 'error')} required">
	<label for="subscription">
		<g:message code="notification.subscription.label" default="Subscription" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subscription" name="subscription.id" from="${ca.marcpa.eventregistrar.Subscription.list()}" optionKey="id" required="" value="${notificationInstance?.subscription?.id}" class="many-to-one"/>

</div>

