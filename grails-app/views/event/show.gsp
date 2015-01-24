
<%@ page import="ca.marcpa.eventregistrar.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="event.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${eventInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="event.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="event.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${eventInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.postEventOn}">
				<li class="fieldcontain">
					<span id="postEventOn-label" class="property-label"><g:message code="event.postEventOn.label" default="Post Event On" /></span>
					
						<span class="property-value" aria-labelledby="postEventOn-label"><g:formatDate date="${eventInstance?.postEventOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventOccursOn}">
				<li class="fieldcontain">
					<span id="eventOccursOn-label" class="property-label"><g:message code="event.eventOccursOn.label" default="Event Occurs On" /></span>
					
						<span class="property-value" aria-labelledby="eventOccursOn-label"><g:formatDate date="${eventInstance?.eventOccursOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.maximumCapacity}">
				<li class="fieldcontain">
					<span id="maximumCapacity-label" class="property-label"><g:message code="event.maximumCapacity.label" default="Maximum Capacity" /></span>
					
						<span class="property-value" aria-labelledby="maximumCapacity-label"><g:fieldValue bean="${eventInstance}" field="maximumCapacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.contactFirstName}">
				<li class="fieldcontain">
					<span id="contactFirstName-label" class="property-label"><g:message code="event.contactFirstName.label" default="Contact First Name" /></span>
					
						<span class="property-value" aria-labelledby="contactFirstName-label"><g:fieldValue bean="${eventInstance}" field="contactFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.contactLastName}">
				<li class="fieldcontain">
					<span id="contactLastName-label" class="property-label"><g:message code="event.contactLastName.label" default="Contact Last Name" /></span>
					
						<span class="property-value" aria-labelledby="contactLastName-label"><g:fieldValue bean="${eventInstance}" field="contactLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.contactEmail}">
				<li class="fieldcontain">
					<span id="contactEmail-label" class="property-label"><g:message code="event.contactEmail.label" default="Contact Email" /></span>
					
						<span class="property-value" aria-labelledby="contactEmail-label"><g:fieldValue bean="${eventInstance}" field="contactEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.subscriptions}">
				<li class="fieldcontain">
					<span id="subscriptions-label" class="property-label"><g:message code="event.subscriptions.label" default="Subscriptions" /></span>
					
						<g:each in="${eventInstance.subscriptions}" var="s">
						<span class="property-value" aria-labelledby="subscriptions-label"><g:link controller="subscription" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.pendingSubscriptions}">
				<li class="fieldcontain">
					<span id="pendingSubscriptions-label" class="property-label"><g:message code="event.pendingSubscriptions.label" default="Pending Subscriptions" /></span>
					
						<g:each in="${eventInstance.pendingSubscriptions}" var="p">
						<span class="property-value" aria-labelledby="pendingSubscriptions-label"><g:link controller="subscription" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
