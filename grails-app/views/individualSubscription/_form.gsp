<%@ page import="ca.marcpa.eventregistrar.IndividualSubscription" %>



<div class="fieldcontain ${hasErrors(bean: individualSubscriptionInstance, field: 'subscribed', 'error')} ">
	<label for="subscribed">
		<g:message code="individualSubscription.subscribed.label" default="Subscribed" />
		
	</label>
	<g:select id="subscribed" name="subscribed.id" from="${ca.marcpa.eventregistrar.Event.list()}" optionKey="id" value="${individualSubscriptionInstance?.subscribed?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualSubscriptionInstance, field: 'waitingLine', 'error')} ">
	<label for="waitingLine">
		<g:message code="individualSubscription.waitingLine.label" default="Waiting Line" />
		
	</label>
	<g:select id="waitingLine" name="waitingLine.id" from="${ca.marcpa.eventregistrar.Event.list()}" optionKey="id" value="${individualSubscriptionInstance?.waitingLine?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualSubscriptionInstance, field: 'subscriberFirstName', 'error')} required">
	<label for="subscriberFirstName">
		<g:message code="individualSubscription.subscriberFirstName.label" default="Subscriber First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subscriberFirstName" required="" value="${individualSubscriptionInstance?.subscriberFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualSubscriptionInstance, field: 'subscriberLastName', 'error')} required">
	<label for="subscriberLastName">
		<g:message code="individualSubscription.subscriberLastName.label" default="Subscriber Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subscriberLastName" required="" value="${individualSubscriptionInstance?.subscriberLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualSubscriptionInstance, field: 'subscriberEmail', 'error')} required">
	<label for="subscriberEmail">
		<g:message code="individualSubscription.subscriberEmail.label" default="Subscriber Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="subscriberEmail" required="" value="${individualSubscriptionInstance?.subscriberEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: individualSubscriptionInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="individualSubscription.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${individualSubscriptionInstance?.email}"/>

</div>

