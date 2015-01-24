<%@ page import="ca.marcpa.eventregistrar.Subscription" %>



<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'subscribed', 'error')} ">
	<label for="subscribed">
		<g:message code="subscription.subscribed.label" default="Subscribed" />
		
	</label>
	<g:select id="subscribed" name="subscribed.id" from="${ca.marcpa.eventregistrar.Event.list()}" optionKey="id" value="${subscriptionInstance?.subscribed?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'waitingLine', 'error')} ">
	<label for="waitingLine">
		<g:message code="subscription.waitingLine.label" default="Waiting Line" />
		
	</label>
	<g:select id="waitingLine" name="waitingLine.id" from="${ca.marcpa.eventregistrar.Event.list()}" optionKey="id" value="${subscriptionInstance?.waitingLine?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

