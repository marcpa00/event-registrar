<%@ page import="ca.marcpa.eventregistrar.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="event.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${eventInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="event.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${eventInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="event.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${eventInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'postEventOn', 'error')} required">
	<label for="postEventOn">
		<g:message code="event.postEventOn.label" default="Post Event On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="postEventOn" precision="day"  value="${eventInstance?.postEventOn}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventOccursOn', 'error')} required">
	<label for="eventOccursOn">
		<g:message code="event.eventOccursOn.label" default="Event Occurs On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventOccursOn" precision="day"  value="${eventInstance?.eventOccursOn}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'maximumCapacity', 'error')} required">
	<label for="maximumCapacity">
		<g:message code="event.maximumCapacity.label" default="Maximum Capacity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maximumCapacity" type="number" value="${eventInstance.maximumCapacity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'contactFirstName', 'error')} required">
	<label for="contactFirstName">
		<g:message code="event.contactFirstName.label" default="Contact First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactFirstName" required="" value="${eventInstance?.contactFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'contactLastName', 'error')} required">
	<label for="contactLastName">
		<g:message code="event.contactLastName.label" default="Contact Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactLastName" required="" value="${eventInstance?.contactLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'contactEmail', 'error')} required">
	<label for="contactEmail">
		<g:message code="event.contactEmail.label" default="Contact Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="contactEmail" required="" value="${eventInstance?.contactEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'subscriptions', 'error')} ">
	<label for="subscriptions">
		<g:message code="event.subscriptions.label" default="Subscriptions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.subscriptions?}" var="s">
    <li><g:link controller="subscription" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subscription" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subscription.label', default: 'Subscription')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'pendingSubscriptions', 'error')} ">
	<label for="pendingSubscriptions">
		<g:message code="event.pendingSubscriptions.label" default="Pending Subscriptions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.pendingSubscriptions?}" var="p">
    <li><g:link controller="subscription" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subscription" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subscription.label', default: 'Subscription')])}</g:link>
</li>
</ul>


</div>

