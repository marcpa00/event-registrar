
<%@ page import="ca.marcpa.eventregistrar.GroupSubscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'groupSubscription.label', default: 'GroupSubscription')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-groupSubscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-groupSubscription" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list groupSubscription">
			
				<g:if test="${groupSubscriptionInstance?.subscribed}">
				<li class="fieldcontain">
					<span id="subscribed-label" class="property-label"><g:message code="groupSubscription.subscribed.label" default="Subscribed" /></span>
					
						<span class="property-value" aria-labelledby="subscribed-label"><g:link controller="event" action="show" id="${groupSubscriptionInstance?.subscribed?.id}">${groupSubscriptionInstance?.subscribed?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupSubscriptionInstance?.waitingLine}">
				<li class="fieldcontain">
					<span id="waitingLine-label" class="property-label"><g:message code="groupSubscription.waitingLine.label" default="Waiting Line" /></span>
					
						<span class="property-value" aria-labelledby="waitingLine-label"><g:link controller="event" action="show" id="${groupSubscriptionInstance?.waitingLine?.id}">${groupSubscriptionInstance?.waitingLine?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupSubscriptionInstance?.contactFirstName}">
				<li class="fieldcontain">
					<span id="contactFirstName-label" class="property-label"><g:message code="groupSubscription.contactFirstName.label" default="Contact First Name" /></span>
					
						<span class="property-value" aria-labelledby="contactFirstName-label"><g:fieldValue bean="${groupSubscriptionInstance}" field="contactFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupSubscriptionInstance?.contactLastName}">
				<li class="fieldcontain">
					<span id="contactLastName-label" class="property-label"><g:message code="groupSubscription.contactLastName.label" default="Contact Last Name" /></span>
					
						<span class="property-value" aria-labelledby="contactLastName-label"><g:fieldValue bean="${groupSubscriptionInstance}" field="contactLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupSubscriptionInstance?.contactEmail}">
				<li class="fieldcontain">
					<span id="contactEmail-label" class="property-label"><g:message code="groupSubscription.contactEmail.label" default="Contact Email" /></span>
					
						<span class="property-value" aria-labelledby="contactEmail-label"><g:fieldValue bean="${groupSubscriptionInstance}" field="contactEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupSubscriptionInstance?.groupSize}">
				<li class="fieldcontain">
					<span id="groupSize-label" class="property-label"><g:message code="groupSubscription.groupSize.label" default="Group Size" /></span>
					
						<span class="property-value" aria-labelledby="groupSize-label"><g:fieldValue bean="${groupSubscriptionInstance}" field="groupSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${groupSubscriptionInstance?.guestList}">
				<li class="fieldcontain">
					<span id="guestList-label" class="property-label"><g:message code="groupSubscription.guestList.label" default="Guest List" /></span>
					
						<span class="property-value" aria-labelledby="guestList-label"><g:fieldValue bean="${groupSubscriptionInstance}" field="guestList"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:groupSubscriptionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${groupSubscriptionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
