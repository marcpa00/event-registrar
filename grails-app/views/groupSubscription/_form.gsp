<%@ page import="ca.marcpa.eventregistrar.GroupSubscription" %>



<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'subscribed', 'error')} ">
	<label for="subscribed">
		<g:message code="groupSubscription.subscribed.label" default="Subscribed" />
		
	</label>
	<g:select id="subscribed" name="subscribed.id" from="${ca.marcpa.eventregistrar.Event.list()}" optionKey="id" value="${groupSubscriptionInstance?.subscribed?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'waitingLine', 'error')} ">
	<label for="waitingLine">
		<g:message code="groupSubscription.waitingLine.label" default="Waiting Line" />
		
	</label>
	<g:select id="waitingLine" name="waitingLine.id" from="${ca.marcpa.eventregistrar.Event.list()}" optionKey="id" value="${groupSubscriptionInstance?.waitingLine?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'contactFirstName', 'error')} required">
	<label for="contactFirstName">
		<g:message code="groupSubscription.contactFirstName.label" default="Contact First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactFirstName" required="" value="${groupSubscriptionInstance?.contactFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'contactLastName', 'error')} required">
	<label for="contactLastName">
		<g:message code="groupSubscription.contactLastName.label" default="Contact Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactLastName" required="" value="${groupSubscriptionInstance?.contactLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'contactEmail', 'error')} required">
	<label for="contactEmail">
		<g:message code="groupSubscription.contactEmail.label" default="Contact Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="contactEmail" required="" value="${groupSubscriptionInstance?.contactEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'groupSize', 'error')} required">
	<label for="groupSize">
		<g:message code="groupSubscription.groupSize.label" default="Group Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="groupSize" type="number" value="${groupSubscriptionInstance.groupSize}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupSubscriptionInstance, field: 'guestList', 'error')} required">
	<label for="guestList">
		<g:message code="groupSubscription.guestList.label" default="Guest List" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="guestList" required="" value="${groupSubscriptionInstance?.guestList}"/>

</div>

